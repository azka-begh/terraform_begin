locals {
  service_name = "first1"
  owner        = "Community Team"
}

resource "github_repository" "example" {
  name        = local.service_name
  description = "My codebase"
  visibility  = "public"
}
