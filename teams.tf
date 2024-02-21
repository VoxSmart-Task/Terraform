locals {
  user_team_combinations = flatten([
    for user, teams in var.users : [
      for team in teams : {
        user = user
        team = team
      }
    ]
  ])
}

resource "github_team" "team" {
  for_each = toset(var.team_names)

  name        = each.key
  description = "A team named ${each.key}"
  privacy     = "closed"
}

resource "github_team_membership" "membership" {
  for_each = { for ut in local.user_team_combinations : "${ut.user}-${ut.team}" => ut }

  username = each.value.user
  team_id  = github_team.team[each.value.team].id
  role     = "member"
}