#* Alias definitions
# Set aliases in this file, you can rename it if you like

if [ -f ~/.zsh/aliases.zsh ]; then
    . ~/.zsh/aliases.zsh
fi

#* Starship prompt
eval "$(starship init zsh)"
# Adds cool information about your environment and git

#* dotenv plugin
source $HOME/.zsh/dotenv.zsh
# When you cd into a directory, the .env-file's environment vars will be automatically loaded. 

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
