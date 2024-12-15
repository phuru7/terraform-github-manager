provider "github" {
  token = var.github_token
  owner = var.github_owner
}

module "github_repository" {
  source = "./modules/github_repo"

  repository_name        = var.repository_name
  repository_description = var.repository_description
}