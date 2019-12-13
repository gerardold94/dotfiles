autoload colors zsh/terminfo
colors

# if [ "$TMUX" = "" ]; then tmux; fi

setopt auto_cd

export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.nvm"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle lukechilds/zsh-nvm
antigen apply

alias vim="nvim"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_EXEC_TIME_SHOW=false

# tmux source ~/.tmux.conf

VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
source /usr/local/bin/virtualenvwrapper.sh

eval "$(rbenv init -)"
