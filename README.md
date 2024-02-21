<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_membership.membership](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team.team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.membership](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_repository.team_repos](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_organization"></a> [github\_organization](#input\_github\_organization) | GitHub organization name | `string` | `"VoxSmart-Task"` | no |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | GitHub PAT token | `string` | `"XXXXXXXXX"` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Map of repository names to their configurations | <pre>map(object({<br>    description     = string<br>    has_issues      = optional(bool)<br>    has_projects    = optional(bool)<br>    has_discussions = optional(bool)<br>    has_wiki        = optional(bool)<br>    visibility      = string<br>    permissions     = map(list(string))<br>  }))</pre> | n/a | yes |
| <a name="input_team_names"></a> [team\_names](#input\_team\_names) | n/a | `list(string)` | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | Map of users and their teams | `map(list(string))` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->