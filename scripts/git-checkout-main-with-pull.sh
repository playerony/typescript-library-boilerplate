mainBranchName=$(git branch -r | cut -d "/" -f2)
echo "Info: Detach main branch name as: '$mainBranchName'."

git checkout $mainBranchName
echo "Info: Checkout to '$mainBranchName' branch."

git pull origin $mainBranchName
echo "Info: Pull changes from '$mainBranchName' branch."
