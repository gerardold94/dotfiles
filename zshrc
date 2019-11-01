autoload colors zsh/terminfo
colors

if [ "$TMUX" = "" ]; then tmux; fi

setopt auto_cd

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
antigen apply

alias vim="nvim"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_EXEC_TIME_SHOW=false
