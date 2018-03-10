# Soumya Ray's dotfiles

Repo to store my dotfiles across dev environments

Adapted from:
- [The best way to store your dotfiles: A bare Git repository](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
- Whitelisting added from (now deleted) Reddit comment

# Initial Setup

1. Setup initial repo and `confgit` alias:
```
git init --bare $HOME/.cfg
alias confgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
confgit config --local status.showUntrackedFiles no
echo "alias confgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

2. Setup whitelist in .gitignore -- example:
```
*
!.gitignore
!.README.MD
!.bash_profile
!.bashrc
!.emacs
!.gitconfig
!.gitignore_global
!.gitk
!.profile
!.pryrc
!.rvmrc
```
note that `*` and `.gitignore` are essential; all others are up to you

3. Create README.md describing your setup!

4. Add files to repo and push:
```
git add .
git remote add origin git@github.com:soumyaray/dotfiles.git
git push -u origin master
```

# Setup on a new VM

1. Setup confgit alias:
```
alias confgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

2. Clone dotfiles repo:
```
git clone --bare <git-repo-url> $HOME/.cfg
```

3. Bring all files to new system:
```
confgit checkout
```
and handle any errors and conflicts by removing or backing up existing dotfiles
