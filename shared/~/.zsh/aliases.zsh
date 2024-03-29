
#* terminal
alias zshreload='source ~/.zshrc'
alias zshrc='${=EDITOR} ~/.zshrc' # edit zshrc
alias s='sudo'
alias aliases='cat ~/.zsh/aliases.zsh'

#* filesystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Better ls
alias ls="lsd"
alias ll='lsd -alF'
alias la='lsd -A'
alias lsh='lsd -a --hyperlink=auto' # --hyperlink=auto allows click-to-download with kitty (also works on remote)

# Better cat with syntax highlighting, git integration, and line numbers
alias cat="batcat --paging=never" # use -p to remove line numbers (for copy-pasting)

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

# Fast forwards all possible branches to the state of the remote
gffwd() {
  REMOTES="$@";
  if [ -z "$REMOTES" ]; then
    REMOTES=$(git remote);
  fi
  REMOTES=$(echo "$REMOTES" | xargs -n1 echo)
  CLB=$(git rev-parse --abbrev-ref HEAD);
  echo "$REMOTES" | while read REMOTE; do
    git remote update $REMOTE
    git remote show $REMOTE -n \
    | awk '/merges with remote/{print $5" "$1}' \
    | while read RB LB; do
      ARB="refs/remotes/$REMOTE/$RB";
      ALB="refs/heads/$LB";
      NBEHIND=$(( $(git rev-list --count $ALB..$ARB 2>/dev/null) +0));
      NAHEAD=$(( $(git rev-list --count $ARB..$ALB 2>/dev/null) +0));
      if [ "$NBEHIND" -gt 0 ]; then
        if [ "$NAHEAD" -gt 0 ]; then
          echo " branch $LB is $NBEHIND commit(s) behind and $NAHEAD commit(s) ahead of $REMOTE/$RB. could not be fast-forwarded";
        elif [ "$LB" = "$CLB" ]; then
          echo " branch $LB was $NBEHIND commit(s) behind of $REMOTE/$RB. fast-forward merge";
          git merge -q $ARB;
        else
          echo " branch $LB was $NBEHIND commit(s) behind of $REMOTE/$RB. resetting local branch to remote";
          git branch -f $LB -t $ARB >/dev/null;
        fi
      fi
    done
  done
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

#* NALA
alias apt='nala'
alias apt-get='nala'

#* KITTY
# Show images in term
alias icat="kitty +kitten icat" # followed by image file name
# Download / upload files from / to remote (also works with directories)
alias download="kitty +kitten transfer" # then local path and remote path
alias upload="kitty +kitten transfer --direction=receive" # then remote path and local path # then local path and remote path
alias sshkitty="kitty +kitten ssh" # fixes ssh issues by copying terminfo files to the server

#* Misc.
alias weather="curl wttr.in"
alias dotenv='export $(cat -p .env | xargs)' # sources .env file from cwd
