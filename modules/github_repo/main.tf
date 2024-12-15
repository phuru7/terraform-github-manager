terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.repository_description
  #private     = false
  auto_init   = true

  has_issues    = false
  has_wiki      = false
  has_projects  = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true

  visibility     = "public"
}

resource "github_branch" "main" {
  repository    = github_repository.repo.name
  branch        = "main"
  source_branch = "master"  
  depends_on    = [github_repository.repo]
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = "main"
  depends_on = [github_branch.main]
}

resource "github_branch" "develop" {
  repository    = github_repository.repo.name
  branch        = "develop"
  source_branch = "main"
  depends_on    = [github_branch_default.default]
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id
  pattern       = "main"

  allows_deletions = false
  enforce_admins   = false

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = 1
  }
  depends_on = [github_branch_default.default]
}
