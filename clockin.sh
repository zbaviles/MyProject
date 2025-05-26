#!/bin/bash

name=$(whoami)
day=$(date)

echo -e "Welcome $name,\\n"
echo -e "    $day as of today."

routine() {
    remote=$(git log origin/main...HEAD~)
    repo=$(git log --oneline origin/main..HEAD)

    if [ -n "$remote" ]; then
        echo -e "Done for this day $name?\\n"
        echo -e "    remote attached:\\n$remote"
        return 1
    else
        echo -e "Your latest commit $name,\\n"
        echo -e "    continue with:\\n$repo"
        return 0
    fi
}

routine
echo "Exit with success $name"
