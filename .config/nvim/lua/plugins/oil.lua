return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function ()
    require("oil").setup({
      default_file_explorer = false,
      float = {
        padding = 2,
        max_width = 0.9,
        max_height = 0.7,
        border = "rounded",
        preview_split = "auto"
      },
      keymaps = {
        ["q"] = { "actions.close", mode = "n" },
        -- would set h and j to navigate directories,
        -- but ruins the editor aspect of oil.
        ["<bs>"] = { "actions.parent", mode = "n" },
      }
    })

    vim.keymap.set("n", "<leader>o", "<CMD>Oil --float .<CR>", { desc = "Open Oil at ." })
  end
}
