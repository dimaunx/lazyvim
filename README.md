# Setup macOS

```sh
brew install --cask font-ubuntu-mono-nerd-font
brew install git neovim lazygit trash ripgrep fd gnu-sed gmp
mv ~/.config/nvim{,.bak}
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
git clone https://github.com/dimaunx/lazyvim ~/.config/nvim
```

## Optional

```sh
brew install hashicorp/tap/terraform go fzf
/usr/local/opt/fzf/install
```

### tmux

```sh
brew install tmux
mkdir -p ~/.config/tmux
cp tmux.conf ~/.config/tmux/tmux.conf
tmux
tmux source ~/.config/tmux/tmux.conf # Install plugins with <Ctrl + b + I>
```

### alacritty

```sh
brew install alacritty
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
cp alacritty.toml ~/.config/alacritty/alacritty.toml
```
