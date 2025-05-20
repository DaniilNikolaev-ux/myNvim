return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.tokyonight_style = "night" -- night/moon/storm
    vim.cmd.colorscheme("tokyonight")
  end,
}
