# keybinds

# set variables
DOCKER_SOCK="/mnt/wsl/shared-docker/docker.sock"

if [ -S "$DOCKER_SOCK" ]; then
  export DOCKER_HOST="unix://$DOCKER_SOCK"
fi

export NULLCMD=bat
export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# change zsh options
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

# create aliases

alias ls='exa -1aFh --git --icons'
alias exa='exa -1aFh --git --icons'
alias man='batman'
alias trail='<<<${(F)path}'
alias cat='bat'
alias python='python3'

# customize prompt
PROMPT='
%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %L %(!.#.>) '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b) %f'
zstyle ':vcs_info:*' enable git
RPROMPT="$RPROMPT%F{248}%*%f"

# add locations to $PATH
# removes duplicates in the path variable
typeset -U path

path=(
  $path
  "$HOME/.local/bin"
)

# functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# zsh plugins

# init procedures
~/.docker_service.zsh