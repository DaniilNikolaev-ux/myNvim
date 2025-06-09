return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-t>", ":Neotree toggle<CR>", desc = "NeoTree" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,         -- Показывать скрытые файлы (они будут "приглушены")
        hide_dotfiles = false,  -- Не скрывать файлы, начинающиеся с точкой
        hide_gitignored = false,-- Не скрывать файлы из .gitignore
        hide_hidden = false,    -- Не скрывать скрытые файлы (важно!)
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
