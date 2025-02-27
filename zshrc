# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

#fzf 
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/plugins"
export LOCAL_DIR="$HOME/local"
export TEMP_DIR="$LOCAL_DIR/tmp"
export BIN_DIR="$LOCAL_DIR/bin"
export SCRIPTS_DIR="$LOCAL_DIR/development/scripts"
export WEB_DIR="$LOCAL_DIR/www"
export DOTFILES="$HOME/.dotfiles"

export TERM="xterm-256color"

export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"

# You may need to manually set your language environment
export LANG="en_US.UTF-8"

export TERMINAL="/usr/bin/urxvt"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then                     
  export EDITOR="/usr/bin/vim"
else
  export EDITOR="/usr/bin/vim"
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# shellcheck source=/home/sd/.dotfiles
# shellcheck disable=SC1091
source "$ZSH/oh-my-zsh.sh"
# shellcheck disable=SC1091
source "$HOME/.functions"
# shellcheck disable=SC1091
source "$HOME/.aliases"
# shellcheck disable=SC1091
source "$HOME/.screenlayout/default.sh"
# shellcheck disable=SC2034
plugins=(git archlinux zsh-interactive-cd fasd history)
# shellcheck disable=SC2206
fpath=($HOME/.zsh-complete $fpath)

# shellcheck disable=SC2046
eval $(fasd --init posix-alias zsh-hook zsfad-wcomp-install zsh-wcomp zsh-ccomp-install zsh-ccomp)

autoload -Uz vcs_info
precmd() { vcs_info; }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
# shellcheck disable=SC2154
# shellcheck disable=SC2034
PROMPT="%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ "

# HSTR configuration - add this to ~/.zshrc
alias hh="hstr"                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG="hicolor"       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# source /usr/share/nvm/init-nvm.sh