#!/bin/bash

name=$(whoami)
day=$(date)

echo -e "Welcome $name,\\n"
echo -e "    $day as of today."

routine() {
    remote=$(git log origin/main...HEAD~)
    repo=$(git log --oneline origin/main..HEAD)

    if [ -n "$repo" ]; then
        echo -e "you have unpushed commits,\\n"
        echo -e "    Continue with:\\n$repo"

        return 1
    elif [ -n "$remote" ]; then

        echo -e "Done for today $name?\\n"
        echo -e "    remote changes:\\n$remote"

        return 2
    else
        echo -e "you have no new commits,\\n"
        echo -e "Please make some changes before pushing."

        return 0
    fi
}

routine
if [ $? -eq 2 ]; then
    echo "Have a nice day $name!"
else
    echo "There are remote changes. Please pull the latest updates before continuing $name."
fi