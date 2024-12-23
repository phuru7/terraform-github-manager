#output "repository_url" {
#  description = "URL of the created repository"
#  value       = module.github_repository.repository_url
#}

#output "ssh_clone_url" {
#  description = "SSH clone URL of the repository"
#  value       = module.github_repository.ssh_clone_url
#}

output "repository_urls" {
  description = "URLs of all created repositories"
  value = {
    for repo_key, repo in module.github_repositories : repo_key => repo.repository_url
  }
}

output "ssh_clone_urls" {
  description = "SSH clone URLs of all created repositories"
  value = {
    for repo_key, repo in module.github_repositories : repo_key => repo.ssh_clone_url
  }
}