# Terraform GitHub Repository Manager

This project uses Terraform to manage multiple GitHub repositories following infrastructure as code best practices.

## Project Architecture

This project implements a modular approach to manage multiple GitHub repositories simultaneously using Terraform. The structure allows creating and managing several repositories while maintaining consistent configuration and branch protection policies across all of them.

### Repository Structure
Each repository is created with:
- `main`: Primary branch with protection rules
- `develop`: Development branch for ongoing work

### Protection Policies
All repositories implement these security measures:
- Protected main branch
- Required code reviews for pull requests
- Automated branch protection rules

## Configuration
Repositories are defined in the `terraform.tfvars` file using this structure:

```hcl
repositories = {
  repo1 = {
    name        = "first-repository"
    description = "Description for first repository"
  }
  repo2 = {
    name        = "second-repository"
    description = "Description for second repository"
  }
}
```

## Getting Started
1. Clone the repository
```bash
git clone ${github_repository.repo.ssh_clone_url}
```

2. Create a new branch from develop for your changes
```bash
git checkout develop
git checkout -b feature/your-new-feature
```

