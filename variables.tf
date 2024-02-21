variable "github_token" {
  description = "GitHub PAT token"
}

variable "github_organization" {
  description = "GitHub organization name"
  default     = "VoxSmart-Task"
}

variable "repositories" {
  description = "Map of repository names to their configurations"
  type        = map(object({
    description     = string
    has_issues      = optional(bool)
    has_projects    = optional(bool)
    has_discussions = optional(bool)
    has_wiki        = optional(bool)
    visibility      = string
    permissions     = map(list(string))
  }))
}

variable "users" {
  description = "Map of users and their teams"
  type        = map(list(string))
  default     = {}
}

variable "team_names" {
  type    = list(string)
}

