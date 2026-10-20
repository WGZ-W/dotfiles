-- lua/config/lsp.lua
vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".git" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },   -- 让 lua_ls 认识 vim 全局
      workspace = { checkThirdParty = false },
    },
  },
}
vim.lsp.enable("lua_ls")