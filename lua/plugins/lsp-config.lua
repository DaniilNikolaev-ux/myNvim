 return {
   {
     "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      require("lspconfig").pyright.setup({})
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, ({}))
    end
    },
    {
      "mason-org/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
           ensure_installed = { "lua_ls"}
        })
      end
    },
    {
      "mason-org/mason.nvim",
      config = function()
        require("mason").setup()
      end 
    }

}

