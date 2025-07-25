return {
  "neovim/nvim-lspconfig",
  config = function(_, opts)
    require("lspconfig").lua_ls.setup {}
  end
}
