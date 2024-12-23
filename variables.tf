variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub Personal owner"
  type        = string
  sensitive   = true
}

variable "repositories" {
  description = "Map of repositories to create"
  type = map(object({
    name = string
    description = string
  }))
}

#variable "repository_name" {
#  description = "Name of the repository"
#  type        = string
#}

#variable "repository_description" {
#  description = "Description of the repository"
#  type        = string
#}