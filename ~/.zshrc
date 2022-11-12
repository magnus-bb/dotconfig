#* Copied from Oh My Bash
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

#* Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


#* ----------------------
#* OWN SETTINGS FROM HERE
#* ----------------------

#* Alias definitions
if [ -f ~/.zsh/aliases.zsh ]; then
    . ~/.zsh/aliases.zsh
fi
# Set aliases in this file, you can rename it if you like

#* Starship prompt
eval "$(starship init zsh)"
# Adds cool information about your environment and git

#* Syntax highlight plugin
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# Red means you misspelled something, or don't have the command in your PATH etc

#* Completion plugin
source $HOME/.zsh/completion.zsh
# Better completion on TAB

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

#* Load autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Press RIGHT to accept suggestion

#* History settings from oh-my-zsh
source $HOME/.zsh/history.zsh
# Search with CTRL + R

#* Direct cd with z
. ~/.zsh/z/z.sh

#* Greeting
# neofetch
# OR
export PATH=$PATH:$HOME/.local/bin # install location of fetching
fetching -r
# Automatically on terminal boot

#* Make sure ctrl-left/right jumps words
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

#* Make sure ctrl-backspace/delete deletes whole words
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

#* Enable autocorrect & make opts readable - I'd rather use TheFuck
#setopt correct
#export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color?
# [Yes, No, Abort, Edit] "
# Will try and fix misspellings

#* TheFuck
source $HOME/.zsh/thefuck.zsh
# Makes esc+esc bind to thefuck and initializes it

#* Enable globbing / wildcard substitutions
set -o GLOB_SUBST
# Can use globs in variables to get a list of matching files etc.

#* Go
# Workspace bin and go installation bins
export PATH=$PATH:/usr/share/code/bin:$HOME/dev/go/bin:/usr/local/go/bin
export GOPATH=$HOME/dev/go/

#* Android
export PATH=$PATH:$HOME/android-studio/bin:$HOME/Android/Sdk/tools/bin:$HOME/Android/Sdk/emulator/
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk

#* NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

#* PNPM
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

#* BUN
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun" # bun completions

#* RANGER
export EDITOR="code" # Default editor for plaintext files
