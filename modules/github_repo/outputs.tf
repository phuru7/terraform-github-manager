output "repository_url" {
  value       = github_repository.repo.html_url
  description = "URL of the repository"
}

output "ssh_clone_url" {
  value       = github_repository.repo.ssh_clone_url
  description = "SSH URL to clone the repository"
}

output "repository_id" {
  value       = github_repository.repo.node_id
  description = "Node ID of the repository"
}