# Dev Stash

A stash for all dev configs:

- neovim config
- tmux config
- iterm2 config
- .zshrc config
- brew packages list backup

## Installation

```bash
mkdir ~/.config
cd ~/.config
git clone git@github.com:anirudhaxe/dev-stash.git .
```

## iterm2

In iterm2 installation, point to custom configuration directory by:

- Open iterm2
- Use `cmd+,` to open settings
- Under `General`, go to `Settings`
- check `Load settings from a custom folder or URL`
- Add path: `~/.config/iterm2-conf`
- In `Save changes` selectable, select `Automatically`

## zsh

Install zshrc configuration by removing the existing .zshrc file and creating a symbolic link:

```bash
rm ~/.zshrc
ln -s ~/.config/zsh-conf/.zshrc ~/.zshrc
source ~/.zshrc
```

## Homebrew

Use the brew packages list backup file to install all packages using brew cli:

```bash
xargs brew install < ~/.config/brew-ls-backup/brew_packages_list.txt
```

To update the packages list backup file:

```bash
brew list > ~/.config/brew-ls-backup/brew_packages_list.txt
```

---
