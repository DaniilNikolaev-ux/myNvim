return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",  -- Optional but recommended for Telescope integration
    },
    config = function()
      local harpoon = require("harpoon")
  
      -- Basic setup (customize as needed)
      harpoon:setup({
        settings = {
          save_on_toggle = true,      -- Auto-save changes when toggling marks
          sync_on_ui_close = true,    -- Sync marks when UI closes
          -- Customize icons (optional)
          mark_branch = false,        -- Disable Git branch integration (for speed)
        },
      })
  
      -- Keymaps (modern Lua style)
      local map = vim.keymap.set
      local list = harpoon:list()
  
      -- Core functionality
      map("n", "<leader>ha", function() list:add() end, { desc = "Harpoon: Add file" })
      map("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(list) end, { desc = "Harpoon: Menu" })
      map("n", "<leader>1", function() list:select(1) end, { desc = "Harpoon: Go to file 1" })
      map("n", "<leader>2", function() list:select(2) end, { desc = "Harpoon: Go to file 2" })
      -- Add more shortcuts (3-9) as needed
  
      -- Extended: Telescope integration
      map("n", "<leader>ht", function()
        require("telescope.pickers").new({}, {
          prompt_title = "Harpoon Files",
          finder = require("telescope.finders").new_table({
            results = list:display(),
          }),
          sorter = require("telescope.config").values.generic_sorter({}),
        }):find()
      end, { desc = "Harpoon: Telescope view" })
  
      -- Extended: Navigation commands
      map("n", "<leader>hn", function() list:next() end, { desc = "Harpoon: Next file" })
      map("n", "<leader>hp", function() list:prev() end, { desc = "Harpoon: Previous file" })
    end
  }