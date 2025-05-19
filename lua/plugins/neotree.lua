return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-t>", ":Neotree toggle<CR>", desc = "NeoTree" },  -- Перенесено в `keys`
  },
  config = function()
    require("neo-tree").setup({})  -- Обязательный вызов setup()
  end,
}