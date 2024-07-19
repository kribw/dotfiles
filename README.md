# dotfiles
dotfiles for Linux applications.

### Stow
- Using [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks.
- Stow target will be parent directory by default.
```git clone https://github.com/kribw/dotfiles.git $HOME```

```python
# -- Stow package(s)
stow .

# Delete (unstow) package(s) 
stow -D .
```

### Fonts
(Optional): Install [RobotoMono Nerd Font](https://www.nerdfonts.com/font-downloads) for Neovim icons.
