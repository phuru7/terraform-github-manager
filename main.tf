provider "github" {
  token = var.github_token
  owner = var.github_owner
}

module "github_repositories" {
  for_each = var.repositories
  source = "./modules/github_repo"

  repository_name        = each.value.name
  repository_description = each.value.description
}