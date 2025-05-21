# build/home

1. When adding from core/ use `git add --update` before `git push`

2. When commiting in local machine use example `git commit -m "update file to build/home"` before `git push`

    >For now continue to 3. and 4.  

3. When using `git status` use `git log --oneline origin/main..HEAD~` to see the changes made in the local machine after `git commit -m "update file to build/home"`

4. When searching for the latest commit use `git log origin/main...HEAD~` to see the changes made in the remote repository after `git push`