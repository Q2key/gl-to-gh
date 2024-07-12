REPO=$1
source $2
privacy=$3

WORKING_DIR=$BASE_PATH
REPO_WITH_EXT=$REPO.git

# Clean up if the directory already exists
if [ -d "$REPO_WITH_EXT" ]; then rm -Rf $REPO_WITH_EXT; fi

echo $REPO $REPO_WITH_EXT

# Clone the GitLab repository
git clone --mirror $GITLAB_HOST/$REPO_WITH_EXT

cd $REPO_WITH_EXT

ls -lah

# Create a new repository on GitHub
gh repo create $REPO --$privacy

# Push the repository to GitHub
git push --no-verify --mirror $GITHUB_HOST/$REPO_WITH_EXT

cd $WORKING_DIR

ls -lah

# Clean up the local repository
if [ -d "$REPO_WITH_EXT" ]; then rm -Rf $REPO_WITH_EXT; fi
