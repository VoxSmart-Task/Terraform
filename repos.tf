locals {
  flattened = flatten([
    for repo, details in var.repositories : [
      for perm, teams in details.permissions : [
        for team in teams : {
          repo       = repo
          permission = perm
          team       = team
        }
      ]
    ]
  ])
}

resource "github_repository" "repo" {
  for_each = var.repositories

  name            = each.key
  description     = each.value.description
  has_projects    = each.value.has_projects
  has_discussions = each.value.has_discussions
  has_wiki        = each.value.has_wiki
  has_issues      = each.value.has_issues
  visibility      = each.value.visibility
  auto_init       = true
}

resource "github_team_repository" "team_repos" {
  for_each = { for item in local.flattened : "${item.repo}-${item.team}-${item.permission}" => item }

  repository = each.value.repo
  team_id    = github_team.team[each.value.team].id
  permission = each.value.permission
}