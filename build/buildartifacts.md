# Git and GitHub Control Flow by [zbaviles](https://github.com/zbaviles)

## Seciton 1: Staging and Committing

### Step One
> When adding from core/ use `git add --update` before `git push`

### Step Two
> When commiting in local machine use example `git commit -m "update file to build/home"` before `git push`

*For now continue to 3. and 4.*

***
## Section 2: latest commit

### Step Three
> When using `git status` use `git log --oneline origin/main..HEAD` to see the changes made in the local machine after `git commit -m "update file to build/home"`

### Step Four
> When searching for the latest commit use `git log origin/main...HEAD~` to see the changes in the remote repository after `git push`