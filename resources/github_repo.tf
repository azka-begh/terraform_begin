terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
provider "github" {
  token = "ENTER_PAT"
}
resource "github_repository" "terra-resource" {
  name        = "terra"
  description = "creating this repo via terraform"
  visibility  = "public"
}
