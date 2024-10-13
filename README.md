# Dev Stash

A stash for dev configs for macOS.

- neovim config
- tmux config
- iterm2 config
- .zshrc config
- Homebrew dump

## Installation

```bash
mkdir ~/.config
cd ~/.config
git clone git@github.com:anirudhaxe/dev-stash.git .
```

## Homebrew

[Install Homebrew](https://brew.sh/), then setup the [packages](https://github.com/anirudhaxe/dev-stash/blob/main/brew-dump/Brewfile) using Homebrew Brewfile:

```bash
brew bundle --file=~/.config/brew-dump/Brewfile
```

To update the Homebrew Brewfile:

```bash
rm ~/.config/brew-dump/Brewfile
brew bundle dump --file=~/.config/brew-dump/Brewfile --no-vscode
```

## zsh

Install zshrc configuration by removing the existing .zshrc file and creating a symbolic link:

```bash
rm ~/.zshrc
ln -s ~/.config/zsh-conf/.zshrc ~/.zshrc
source ~/.zshrc
```

## iterm2

In iterm2 installation, point to custom configuration directory by:

- Open iterm2
- Use `cmd+,` to open settings
- Under `General`, go to `Settings`
- check `Load settings from a custom folder or URL`
- Add path: `~/.config/iterm2-conf`
- In `Save changes` selectable, select `Automatically`

---
