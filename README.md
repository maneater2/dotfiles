# dotfiles

This repo contains all my configs I use.

## getting started

My dotfiles are managed with `stow`, which manages symlinks so that the files in this dotfiles repo are synced with the actual configs.

To get started with using my dotfiles run these commmands:

```shell
# arch
sudo pacman -S stow

# gentoo
doas emerge -av app-admin/stow

git clone https://github.com/maneater2/dotfiles
cd dotfiles
```

After that, you just need to run the stow command to symlink the dotfiles you want.

```shell
stow alacritty fish kitty nvim picom tmux hypr
```

