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

export TERM="xterm-256color"

# Would you like to use another custom folder than $ZSH/custom?

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew zsh-syntax-highlighting z fasd history)
fpath=($ZSH/custom/plugins/zsh-completions/src $HOME/.zsh-complete $fpath)

# User configuration

#fzf 
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
export SSH_KEY_PATH="~/.ssh/rsa_id"

source "$ZSH/oh-my-zsh.sh"
source "$HOME/.functions"
source "$HOME/.aliases"
source "$HOME/.screenlayout/default.sh"


eval "$(fasd --init posix-alias zsh-hook zsfad-wcomp-install zsh-wcomp zsh-ccomp-install zsh-ccomp )"

source /usr/share/nvm/init-nvm.sh

autoload -U +X bashcompinit && bashcompinit

# HSTR configuration - add this to ~/.zshrc
alias hh="hstr"                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG="hicolor"       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)



# Load Angular CLI autocompletion.
source <(ng completion script)
