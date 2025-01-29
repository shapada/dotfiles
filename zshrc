export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
ZSH_CUSTOM=~"/.oh-my-zsh/custom/plugins"

# Would you like to use another custom folder than $ZSH/custom?

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting z fasd)
fpath=($ZSH/custom/plugins/zsh-completions/src $fpath)

# User configuration

#fzf 
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export TERM='alacritty'
export TERMINAL='alacritty'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# apps
export OPENAI_API_KEY="sk-89mCVZu-UQy6lHS015Dap74XU1U5cYZMCBzkI5_dRxT3BlbkFJGjQlWSqtrNqlnoPePCdBrl2i-e6zRS5Gj7sLa4seMA"

source $ZSH/oh-my-zsh.sh
source $HOME/.functions
source $HOME/.aliases
source $HOME/.screenlayout/default.sh


eval "$(fasd --init posix-alias zsh-hook zsfad-wcomp-install zsh-wcomp zsh-ccomp-install zsh-ccomp )"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Load Angular CLI autocompletion.
#source <(ng completion script)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
