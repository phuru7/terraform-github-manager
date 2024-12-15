output "repository_url" {
  description = "URL of the created repository"
  value       = module.github_repository.repository_url
}

output "ssh_clone_url" {
  description = "SSH clone URL of the repository"
  value       = module.github_repository.ssh_clone_url
}