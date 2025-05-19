return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "python", "lua", "bash", "markdown" }, 
        highlight = { enable = true },  
        indent = { enable = true },     
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

}
