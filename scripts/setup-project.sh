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
defaultProjectRepository="git@github.com:playerony/typescript-library-boilerplate.git"


## read input data
read -p "Enter the username from github (default: '$defaultUsernameOnGithub'): " usernameOnGithub
read -p "Enter project name (default: '$defaultProjectName'): " userInputProjectName
read -p "Enter project shortcut (default: '$defaultProjectShortcut'): " userInputProjectShortcut
read -p "Enter project description (default: '$defaultProjectDescription'): " userInputProjectDescription
read -p "Enter project author (default: '$defaultProjectAuthor'): " userInputProjectAuthor
read -p "Enter project repository (default: '$defaultProjectRepository'): " userInputProjectRepository


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

verifyUserInput "$userInputProjectRepository" "$defaultProjectRepository"
projectRepository=$(echo "$retval" | sed 's#/#\\/#g')


## generate README.md
echo "# $projectName" > README1.md
echo "" >> README1.md
echo "$projectDescription" >> README1.md
echo "" >> README1.md
echo "![Lint](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/lint/badge.svg)" >> README1.md
echo "![Test](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/test/badge.svg)" >> README1.md
echo "![Build](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/build/badge.svg)" >> README1.md
echo "![Prettier](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/prettier/badge.svg)" >> README1.md
echo "![Typecheck](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/typecheck/badge.svg)" >> README1.md
echo "![Commitlint](https://github.com/$projectRepositoryUsername/$projectShortcut/workflows/commitlint/badge.svg)" >> README1.md
echo "" >> README1.md
echo "# example" >> README1.md
echo "" >> README1.md
echo '```js' >> README1.md
echo "" >> README1.md
echo '```' >> README1.md
echo "" >> README1.md
echo "# usage" >> README1.md
echo "" >> README1.md
echo "# license" >> README1.md
echo "" >> README1.md
echo "MIT" >> README1.md
