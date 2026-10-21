# Repository Guidelines

## Project Structure & Module Organization

This repository contains personal terminal and editor configurations, primarily for Unix-like environments.

- `nvim/init.lua` loads the Neovim configuration. Keep editor options, keymaps, and LSP setup in `nvim/lua/config/`; place lazy.nvim plugin specifications in `nvim/lua/plugins/`.
- `tmux/tmux.conf` defines terminal multiplexing, navigation, and status bar settings.
- `yazi/yazi.toml` configures the file manager; `zsh/yazi.zsh` provides the `y` shell wrapper that changes directories after exiting Yazi.
- `README.md` documents installation; component READMEs describe Neovim and tmux settings. There are no dedicated source, test, or asset directories.

## Build, Test, and Development Commands

No build pipeline or package scripts are configured. Run these commands from the repository root on a machine with the relevant tools installed:

- `ln -s ~/dotfiles/nvim ~/.config/nvim`: install the Neovim configuration after checking for an existing destination.
- `nvim`: launch the linked configuration; lazy.nvim downloads itself and plugins on first startup.
- `tmux source-file "$PWD/tmux/tmux.conf"`: load the working configuration into a running tmux server.
- `zsh -n zsh/yazi.zsh`: check shell syntax without executing the wrapper.
- `git diff --check`: catch whitespace errors before committing.

## Coding Style & Naming Conventions

Use descriptive lowercase filenames matching existing modules, such as `keymaps.lua` and `colorscheme.lua`. Prefer two-space indentation for new Lua code; preserve surrounding indentation when editing existing tab-indented blocks. Keep plugin specifications separate from general editor settings. Use comments to explain non-obvious keybindings and platform assumptions. No formatter or linter is configured; avoid unrelated formatting changes.

## Testing Guidelines

There is no automated test framework or coverage threshold. Validate changed configurations in their target applications: check Neovim startup, affected keymaps, and `:checkhealth`; exercise tmux splits and navigation; verify Yazi hidden-file behavior and the `y` wrapper's directory change. Record the checks performed and any unavailable tools in the pull request.

## Commit & Pull Request Guidelines

Follow the existing commit style: `docs: ...`, `chore: ...`, or `feat(nvim): ...`, with a concise imperative description. Keep commits focused on one component or related behavior. Pull requests should explain the change, affected tools, setup requirements, and validation results. Link relevant issues and include screenshots for visual changes when helpful. Update installation documentation when paths or dependencies change, and keep credentials and machine-specific secrets out of tracked files.
