return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "rust_analyzer", "gopls" }
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})

	      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	      vim.keymap.set({"n", "v"}, "<space>ca", vim.lsp.buf.code_action, {})
      end
    }
  }
}
