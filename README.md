# Setup macOS

This Neovim setup is setup powered by [lazyvim].

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
brew install hashicorp/tap/terraform go fzf curl
/usr/local/opt/fzf/install
```

### [oh-my-zsh]

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### [starship]

```sh
brew install starship
cp starship.toml ~/.config/starship.toml
```

### tmux

```sh
brew install tmux
mkdir -p ~/.config/tmux
cp tmux.conf ~/.config/tmux/tmux.conf
tmux
tmux source ~/.config/tmux/tmux.conf # Install plugins with <Ctrl + b + I>
```

### [alacritty]

```sh
brew install alacritty
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
cp alacritty.toml ~/.config/alacritty/alacritty.toml
```

<!--links-->

[lazyvim]: https://www.lazyvim.org

[oh-my-zsh]: https://ohmyz.sh

[starship]: https://starship.rs

[alacritty]: https://github.com/alacritty/alacritty
