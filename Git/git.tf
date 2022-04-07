provider "github" {
  token = "ghp_QK3XFK9Qh3I92KIombVMVAg6LgTMpz1sHyE1"
}

resource "github_repository" "example" {
  name = "Terraform"
  visibility = "public"
}