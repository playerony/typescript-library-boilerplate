commitMessage="$1"

if [ -z "$commitMessage" ]; then
  echo 'Error: commit message was not specified!'

  exit 1
fi

git add .
echo "Staged all files"

git commit -m "$commitMessage"
echo "Added the commit with message: '$commitMessage'"

currentBranch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

git push origin "$currentBranch"
echo "Push changes to '$currentBranch' branch"
