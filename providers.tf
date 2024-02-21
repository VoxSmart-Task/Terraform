provider "github" {
  owner = var.github_organization
  token = var.github_token
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}