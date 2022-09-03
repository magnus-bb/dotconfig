
#* terminal
alias zshreload='source ~/.zshrc'
alias s='sudo'
alias aliases='cat ~/.zsh/aliases.zsh'

#* filesystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias nuke="rm -rf"
alias rm='rm -i' # ask confirmation

#* git
alias g='git'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gpl='git pull'
alias gps='git push'
alias grh='git reset --hard HEAD~1'
alias grs='git reset --soft HEAD~1'
alias gs='git status'
alias gu='git restore --staged' # unstage
alias gr='git restore'
alias gb='git branch'
alias gcb='git checkout'

# creates new branch of name $1 and syncs it with origin
gnb() { # git new branch
  if [ -n "$1" ]
  then
    git checkout -b "$1"
    git push origin -u "$1"
  fi
}
# deletes branch of name $1 and syncs it with origin
gdb() { # git new branch
  if [ -n "$1" ]
  then
    git push origin -d "$1"
    git branch -d "$1"
  fi
}

#* python
alias python=python3
alias py=python3

# activate a venv
act() {
  if [ -n "$1" ]
  then
    source "$1"/bin/activate
  fi
}

# pip install and add to requirements.txt
pyinst() { 
  if [ -n "$1" ]
  then
    pip install "$1" && pip freeze | grep "$1" >> requirements.txt
  fi
}

#* NPM
alias dev='npm run dev'

#* KITTY
# Show images in term
alias icat="kitty +kitten icat" # followed by image file name
# Click files to edit or download (also works on remote)
alias lslinks="ls -a --hyperlink=auto" # then CTRL + SHIFT + click to download / open file
# Download / upload files from / to remote (also works with directories)
alias download="kitty +kitten transfer" # then local path and remote path
alias upload="kitty +kitten transfer --direction=receive" # then remote path and local path # then local path and remote path
