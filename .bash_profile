# Git Aware Prompt
# https://github.com/jimeh/git-aware-prompt
# ------------------------------------------------------------
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1=" \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Set locale
export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# GIT aliases
alias gb="git rev-parse --abbrev-ref HEAD"  # Display current git branch
alias gs="git status"
alias gco="git checkout"
alias gf="git fetch origin"
alias gps="git push -u origin"
alias gpl="git pull origin"
alias gm="git merge --no-ff"
alias gcm="git commit"

alias vim='mvim -v'                         # Use MacVim instead of vim
alias vi='mvim -v'                          # Use MacVim instead of vim
alias cp='cp -v'                           # Preferred 'cp' implementation
alias mv='mv -v'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation

alias proxy="ssh -D 9999 -v -C -N frontdoor"

export PATH=/usr/local/sbin:$PATH:/usr/local/mysql/bin

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which hem > /dev/null; then eval "$(hem shell-init bash --skip-host-checks)"; fi

export EDITOR=$(which vi)
