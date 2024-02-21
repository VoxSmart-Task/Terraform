resource "github_membership" "membership" {
  for_each = var.users

  username = each.key
  role     = "member"
}