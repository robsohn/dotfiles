# Git Aware Prompt
# https://github.com/jimeh/git-aware-prompt
# ------------------------------------------------------------
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1=" \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# GIT aliases
alias gb="git rev-parse --abbrev-ref HEAD"  # Display current git branch
alias gs="git status"
alias gco="git checkout"
alias gf="git fetch origin"
alias gps="git push origin"
alias gpl="git pull origin"
alias gm="git merge --no-ff"
alias gcm="git commit -a -m"

alias vim='mvim -v'                         # Use MacVim instead of vim
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation

