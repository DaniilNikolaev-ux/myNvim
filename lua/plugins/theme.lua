--return {
--"folke/tokyonight.nvim",
  --lazy = false,
 -- priority = 1000,
  --opts = {},
  --config = function()
    --vim.cmd.colorscheme "tokyonight"
  --end
--}

return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme aura-dark]])
    end
  }
}
