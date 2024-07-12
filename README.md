# GitLab to GitHub Repository Migration Tool

This project provides a script to migrate repositories from GitLab to GitHub. The script clones a repository from GitLab, creates a new repository on GitHub, and pushes the contents of the cloned repository to the new GitHub repository.

## Usage

The script requires three arguments:
1. `REPO`: The name of the repository to migrate.
2. `source`: The base path where the repositories are stored.
3. `privacy`: The privacy setting for the GitHub repository (e.g., `private` or `public`).

```sh
./migrate_repo.sh <REPO> <source> <privacy>
