# Custom fork of nikitavoloboev/dotfiles/git-functions.zsh

# Update README
gz() {
  git add README.md
  git commit -m "docs: update readme"
  git push
}

# cd to root dir of git project
droot() {
  cd $(git rev-parse --show-toplevel)
}

# Pull from current branch
gpo() {
  git pull origin $(git symbolic-ref --short -q HEAD)
}

# Pull changes from upstream (fork) to master
gfu() {
  git fetch upstream
  git pull upstream master
}

# Ignore files and remove them if they were tracked
gri() {
  git rm "$*"
  git rm --cached "$*"
}

# Do an interactive rebase back N number of commits (e.g. grn 3)
grn() {
  git rebase -i HEAD~"$1";
}

# Do an interactive rebase to a supplied commit hash (e.g. grbc 80e1625)
grbic() {
  git rebase -i "$1";
}

# Update contributing file commit
gzo() {
  git add CONTRIBUTING.md
  git commit -m "contrib: update"
  git push
}

# Create new branch. geb <branch-name>
geb() {
  git checkout -b "$1"
}

# Commit all changes with <commit-msg>. gw <commit-msg>
gw() {
    git add .
    git commit -m "${(j: :)@}"
    git push
}

# Commit all changes with `add: <commit-msg>`. gwa <commit-msg>
gwa() {
  git add .
  git commit -m "add: $*"
  git push
}

# Commit all changes with `<fix: commit-msg>`. gwf <commit-msg>
gwf() {
  git add .
  git commit -m "fix: $*"
  git push
}

# Commit all changes with `<remove: commit-msg>`. gwr <commit-msg>
gwr() {
  git add .
  git commit -m "remove: $*"
  git push
}

# Commit all changes with `improve: <msg>`. gwi <msg>
gwi() {
    git add .
    git commit -m "improve: $*"
    git push
}

# Commit all changes with `update: <msg>`. gwe <msg>
gwu() {
    git add .
    git commit -m "update: $*"
    git push
}

# Commit all changes with `refactor`
gwe() {
    git add .
    git commit -m 'refactor'
    git push
}

# Commit all changes with `update`
ggs() {
    git add .
    git commit -m 'update'
    git push
}

# Write quick commit message. gc <commit-msg>
# gc() {
#     git commit -m "$*"
#     #set -x; git commit -m "$*"; set +x;
# }

# cd to root of .git project
groot() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}

# Pull changes made from PR to head. gp <link>
gplpr() {
    git pull origin pull/"$1"/head
}

# Create dir, go to it and initialise it with git. mg <dir-name>
mg() {
    mkdir "$1"
    cd "$1"
    git init
}

# git remote add origin of link found in clipboard
gao() {
    git remote add origin "$(pbpaste)"
}

# git clone and cd instantly to cloned repo. gcl <git-url>
gclone() {
   git clone "$(pbpaste)" && cd "${1##*/}"
}

# git clone link in clipboard
gll() {
    git clone "$(pbpaste)"
}

# Clone repo
gcr() {
  git clone $*
}

# See contents of .git from current dir recusively as a tree
gte() {
	tree -aC -I '.git' --dirsfirst "$@" | less -FRNX
}
