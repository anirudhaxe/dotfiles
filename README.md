# Dotfiles on my machine

Dot files for macOS - node, go, python, devops tooling, terminal & editor configs.

Includes:

- neovim config
- tmux config
- sketchybar config
- aerospace config
- ghostty config
- p10k theme config
- .zshrc config
- Homebrew dump
- iterm2 config

## 📦 Installation

```bash
mkdir ~/.config
cd ~/.config
git clone git@github.com:anirudhaxe/dotfiles.git .
```

## ⚙️ Setup Homebrew

Make sure you have Xcode Command Line Tools installed, run `xcode-select --install` to install it.

[Install Homebrew](https://brew.sh/), then setup the [packages](https://github.com/anirudhaxe/dotfiles/blob/main/brew-dump/Brewfile) using Homebrew Brewfile:

```bash
brew bundle --file=~/.config/brew-dump/Brewfile
```

To update the Homebrew Brewfile later:

```bash
rm ~/.config/brew-dump/Brewfile
brew bundle dump --file=~/.config/brew-dump/Brewfile --no-vscode
```

To update the Homebrew Packages:

```bash
brew update && brew upgrade && brew upgrade --cask && brew cleanup
```

## ⚙️ Setup Terminal Emulator

### ghostty

No additional setup for ghostty, config files are enough.

### iterm2

Install [oh-my-zsh](https://ohmyz.sh/#install), [powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)

In iterm2 installation, point to custom configuration directory by:

- Open iterm2
- Use `cmd+,` to open settings
- Under `General`, go to `Settings`
- check `Load settings from a custom folder or URL`
- Add path: `~/.config/iterm2-conf`
- In `Save changes` selectable, select `Automatically`

### p10k

Install p10k configuration by removing the existing .p10k.zsh file and creating a symbolic link:

```bash
rm ~/.p10k.zsh
ln -s ~/.config/p10k-conf/.p10k.zsh ~/.p10k.zsh
```

### zsh

Install zshrc configuration by removing the existing .zshrc file and creating a symbolic link:

```bash
rm ~/.zshrc
ln -s ~/.config/zsh-conf/.zshrc ~/.zshrc
source ~/.zshrc
```

---
