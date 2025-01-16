return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "everforest",
        component_separators = {
          left = '', right = ''
        },
        section_separators = {
          left = '', right = ''
        },
        always_divide_midline = false,
        always_show_tabline = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
       lualine_x = {'tabs'},
        lualine_y = {'filetype'},
        lualine_z = {'progress'},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end,
}
