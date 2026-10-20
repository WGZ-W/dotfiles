local opt = vim.opt

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Line number
opt.number = true               -- 显示行号
opt.relativenumber = true       -- 相对行号

-- Indent
opt.smartindent = true
opt.autoindent = true
opt.tabstop = 2                 -- Tab 宽度
opt.shiftwidth = 2
opt.expandtab = true            -- Tab 转空格
opt.smartindent = true
opt.wrap = false                -- 不自动换行
opt.ignorecase = true           -- 搜索忽略大小写
opt.smartcase = true            -- 有大写时区分
opt.termguicolors = true        -- 启用真彩色（主题必需）
opt.clipboard = "unnamedplus"   -- 与系统剪贴板同步
-- vim.schedule(
-- 	function()
-- 		vim.opt.clipboard = "unnamedplus"
-- 	end
-- )


opt.updatetime = 250            -- 加快 CursorHold 类事件


opt.cursorline = true
opt.scrolloff = 10
opt.mouse = "a"
opt.showmode = false
opt.breakindent = true
opt.signcolumn = "yes"
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true