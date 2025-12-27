## install git and stow
```bash
paru -S git stow
```
```bash
cd
```
```bash
git clone https://github.com/xxun10224/dotfiles.git
```

## for remote servers (bash and some TUI apps)
```bash
stow bash nvim tmux yazi
```

## all (with sway and GUI apps)
> [!WARNING]
> You may need to create some directories (e.g., `~/Pictures/Screenshots/`, `~/logs/`) and files (e.g., hyprland wallpaper).
> Otherwise, you may encounter errors running hyprland with this config.

```bash
stow */
```
