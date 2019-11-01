#!/bin/bash

# Install brew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Zsh is a powerful shell and an alternative to MacOS’s default Bash. This will be covered in more detail in part 3.
# Tmux is a terminal multiplexer. Using some keyboard hotkeys you can use tabs and split panes for better multitasking.
# NeoVim is a modern alternative to Vim, a terminal based code editor with efficiency and code reading in mind. This will be covered in more detail in part 2. NeoVim has a strange path due to being in active development at the moment.
# Python is installed to extend NeoVim’s plugin support.
# Ag is a code-searching tool similar to Ack but faster. This will be covered more in part 2.
# Reattach-to-user-namespace is a MacOS Sierra fix to ensure the workflow has access to the clipboard so share copy and paste functionality as one would expect in the correct namespace.

brew install zsh antigen tmux neovim/neovim/neovim python3 ag reattach-to-user-namespace

# Install iterm2
brew tap caskroom/cask
brew cask install iterm2

# Install vim-plug to manage plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

# Install patched font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Setting ZSH as Default Shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s /usr/local/bin/zsh

# Removing Any Existing Configs
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null

# Creating Necessary Directories for NeoVim
mkdir -p ~/.config ~/.config/nvim

# Linking Configs
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

# Set alias for nvim
alias vim="nvim"
