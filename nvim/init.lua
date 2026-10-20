-- ~/.config/nvim/init.lua
vim.g.mapleader = " "          -- 空格作为 leader，必须在 lazy 之前
vim.g.maplocalleader = "\\"

require("config.options")       -- 基础选项
require("config.keymaps")       -- 全局键位
require("config.lazy")          -- 启动 lazy.nvim
require("config.lsp")