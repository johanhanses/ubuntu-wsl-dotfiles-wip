DOTFILES="$(pwd)"

# Zsh
rm $HOME/.zshrc
ln -sf $DOTFILES/zshrc/.zshrc $HOME/.zshrc

# promt managed by starship
ln -sf $DOTFILES/starship.toml $HOME/.config/starship.toml

# Tmux
rm -rf $HOME/.config/tmux
ln -sf $DOTFILES/tmux/ $HOME/.config/tmux

# Git
ln -sf $DOTFILES/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.gitignore_global $HOME/.gitignore_global


# Nvim
rm -rf $HOME/.config/nvim
ln -sf $DOTFILES/nvim/ $HOME/.config/nvim

