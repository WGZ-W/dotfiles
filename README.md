

# Dotfiles

个人配置文件集合。


## tmux

```bash
git clone <repo> ~/dotfiles

ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

tmux source-file ~/.tmux.conf
```

## nvim
```bash
git clone <repo> ~/dotfiles

ln -sf ~/dotfiles/nvim ~/.config/nvim

nvim   # lazy.nvim 首次启动会自动安装全部插件
```

## Zsh