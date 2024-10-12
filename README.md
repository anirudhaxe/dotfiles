# Dev Stash

A stash for all dev configs.

- neovim config
- tmux config
- iterm2 config
- .zshrc config backup
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
- Under "General", go to "Settings"
- check "Load settings from a custom folder or URL"
- Add path: "/Users/aniruddha/.config/iterm2-conf"
- In "Save changes" selectable, select "Automatically"

## zsh

Setup zsh shell using .zshrc config backup:

```bash
cp ~/.config/zsh-conf-backup/.zshrc ~/.zshrc
source ~/.zshrc
```

To update the .zshrc backup use:

```bash
cp ~/.zshrc ~/.config/zsh-conf-backup/.zshrc
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
