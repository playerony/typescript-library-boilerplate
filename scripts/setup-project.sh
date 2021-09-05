## functions 
verifyUserInput() {
  local userInputValue="$1"
  local defaultValue="$2"

  if [[ $userInputValue != "" ]];
  then
    retval=$userInputValue
  else
    retval=$defaultValue
  fi
}


## default values
defaultUsernameOnGithub="playerony"
defaultProjectName="Typescript Library Boilerplate"
defaultProjectShortcut="typescript-library-boilerplate"
defaultProjectDescription="Minimal boilerplate for Typescript libraries."
defaultProjectAuthor="Paweł Wojtasiński <pawel.wojtasinski.1995@gmail.com>"
defaultProjectRepository=$(echo "git@github.com:playerony/typescript-library-boilerplate.git" | sed 's#/#\\/#g')


## read input data
read -p "Enter the username from github (default: '$defaultUsernameOnGithub'): " usernameOnGithub
read -p "Enter project name (default: '$defaultProjectName'): " userInputProjectName
read -p "Enter project shortcut (default: '$defaultProjectShortcut'): " userInputProjectShortcut
read -p "Enter project description (default: '$defaultProjectDescription'): " userInputProjectDescription
read -p "Enter project author (default: '$defaultProjectAuthor'): " userInputProjectAuthor


## replace empty values with defaults
verifyUserInput "$usernameOnGithub" "$defaultUsernameOnGithub"
projectRepositoryUsername=$retval

verifyUserInput "$userInputProjectName" "$defaultProjectName"
projectName=$retval

verifyUserInput "$userInputProjectShortcut" "$defaultProjectShortcut"
projectShortcut=$retval

verifyUserInput "$userInputProjectDescription" "$defaultProjectDescription"
projectDescription=$retval

verifyUserInput "$userInputProjectAuthor" "$defaultProjectAuthor"
projectAuthor=$retval

projectRepository=$(echo "git@github.com:$projectRepositoryUsername/$projectShortcut.git" | sed 's#/#\\/#g')


## generate README.md
echo "# $projectName" > README.md
echo "" >> README.md
echo "$projectDescription" >> README.md
echo "" >> README.md
echo "![Lint](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/lint/badge.svg)" >> README.md
echo "![Test](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/test/badge.svg)" >> README.md
echo "![Build](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/build/badge.svg)" >> README.md
echo "![Prettier](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/prettier/badge.svg)" >> README.md
echo "![Typecheck](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/typecheck/badge.svg)" >> README.md
echo "![Commitlint](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/commitlint/badge.svg)" >> README.md
echo "" >> README.md
echo "# example" >> README.md
echo "" >> README.md
echo '```js' >> README.md
echo "" >> README.md
echo '```' >> README.md
echo "" >> README.md
echo "# usage" >> README.md
echo "" >> README.md
echo "# license" >> README.md
echo "" >> README.md
echo "MIT" >> README.md


## replace tags in files with strings

# package.json
sed -i -e "s/$defaultProjectRepository/$projectRepository/g
           s/$defaultProjectAuthor/$projectAuthor/g
           s/$defaultProjectShortcut/$projectShortcut/g
           s/$defaultProjectDescription/$projectDescription/g" package.json

# ./tests/tsconfig.json
sed -i -e "s/$defaultProjectShortcut/$projectShortcut/g" ./tests/tsconfig.json


## remove all created files
find . -name "*-e" -type f -delete


## install all packages
yarn install


## Build brand new Documentation
yarn build:docs


## Setup github
rm -rf .git
git init
git add .
git remote add origin $projectRepository
git branch -M main


## Remove setup-project script
rm ./scripts/setup-project.sh
