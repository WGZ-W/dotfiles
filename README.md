

# Dotfiles

个人配置文件集合。

在新的服务器上，一定要配置的程序：
|Name|Function|Other Similar App|
|-|-|-|
|git|版本控制||
|tmux|终端复用器|
|yazi|文件导航|
|nvtop|GPU任务管理器|nvitop (python)|
|htop|CPU任务管理器|top|
|nvim|编辑器||



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