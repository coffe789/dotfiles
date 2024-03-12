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

# Aliases
alias gst="git status"
alias gp="git push"
alias gl="git pull"
alias nv="nvim"
alias gc="git checkout"
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

# cd magic
CDPATH=:~:~/b4_workspace:~/Documents

# cd aliases
alias wok="cd /home/jonathand/b4_workspace"
alias gnd="cd /home/jonathand/b4_workspace/utilities/bfg2"
alias dot="cd /home/jonathand/.dotfiles"
alias proto="cd /home/jonathand/b4_workspace/common/stm-kria/protobufs"

