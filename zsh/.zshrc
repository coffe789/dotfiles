# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Secret API keys
if [[ -e ~/.dotfiles/zsh/zsh_secret ]]; then
  source ~/.dotfiles/zsh/zsh_secret
fi

# Aliases
alias gst="git status"
alias gp="git push"
alias gl="git pull"
alias nv="nvim"
alias gc="git checkout"
alias gr="git restore"
alias grs="git restore -S"
alias gcm="git commit -m"
alias gacm="git add -A && git commit -m"
alias gdn="git diff --name-status"
alias hgrep="history 0 | grep"
alias la="ls -a"
alias ll="ls -l"
alias ri="rg -i"
alias syu="sudo pacman -Syu"

# Fuzzy completion
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

# Disable annoying autocorroct thing
unsetopt correct_all
unsetopt correct

# cd magic (is annoying...)
# CDPATH=:~

# cd aliases
alias wok="cd /home/jonathand/sky5"
alias gnd="cd /home/jonathand/sky5/Utilities/bfg2"
alias dot="cd /home/jonathand/.dotfiles"
alias proto="cd /home/jonathand/sky5/Shared/protobufs"

eval "$(ssh-agent -s)" # > /dev/null 2>&1)" # start agent and suppress output # Does not seem to launch at all?
