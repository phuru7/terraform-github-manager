## Project Structure

This repository is managed with Terraform and follows these conventions:

### Branches
- `main`: Main project branch
- `develop`: Development branch

### Protections
- Main branch is protected
- Code review is required for pull requests

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

## Contributing

1. Create a branch from develop
2. Make your changes and commit
3. Create a Pull Request to develop
4. After review, it will be merged to main

