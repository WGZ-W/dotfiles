return {
--   "folke/tokyonight.nvim",
  "sainnhe/everforest",
  lazy = false,           -- 主题需要立即加载
  priority = 1000,        -- 确保最先加载
  config = function()
    vim.g.everforest_enable_italic = true
    vim.cmd.colorscheme("everforest")
    -- vim.cmd([[colorscheme everforest]])
  end,
}