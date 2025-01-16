return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    vim.fn.sign_define("DiagnosticSignError",
      {text = " ", texthl = "DiagnosticSignError"})
    vim.fn.sign_define("DiagnosticSignWarn",
      {text = " ", texthl = "DiagnosticSignWarn"})
    vim.fn.sign_define("DiagnosticSignInfo",
      {text = " ", texthl = "DiagnosticSignInfo"})
    vim.fn.sign_define("DiagnosticSignHint",
      {text = "󰌵", texthl = "DiagnosticSignHint"})

    require("neo-tree").setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      default_component_configs = {

        container = {
          enable_character_fade = true,
        },
        indent = {
          indent_size = 2,
          padding = 1,
          indent_marker = "│",
          last_indent_marker = "└",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },
        modified = {
          symbol = "",
        },
        name = {
          use_git_status_colors = true,
        },
        -- git_status = {
          -- can do some symbol stuff
        --},
        file_size = {
          enabled = false,
        },
        type = {
          enabled = false,
        },
        last_modified = {
          enabled = false,
        },
        created = {
          enabled = false,
        },

        window = {
          position = "left",
          width = 30,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          -- configure global mappings
          --mappings = {
          --  
          --},
          -- commands = {}
        },
        nesting_rules = {},
        filesystem = {
          filtered_items = {
            hide_dotfiles = true,
            hide_gitignored = false,
          },
          follow_current_files = {
            enabled = false, -- enabling could be good for telescoping to a file and making sure you see what happened in the tree
            leave_dirs_open = false,
          },
          hijack_netrw_behavior = "open_default",
          window = {
            --mappings = {}
          },
          -- commands = {}
        },
        buffers = {
          follow_current_files = {
            enabled = true,
            leave_dirs_open = false,
          }
        },
        git_status = {
          window = {
            position = "float",
          },
        }
      }
    })

    local map = vim.keymap.set

    map("n", "<leader>ef", "<cmd>Neotree toggle left reveal_force_cwd<cr>", { desc = "Toggle Tree <cwd>" })
    map("n", "<leader>ee", "<cmd>Neotree toggle float reveal_force_cwd<cr>", { desc = "Toggle Tree" })
    map("n", "<leader>eb", "<cmd>Neotree float buffers<cr>", { desc = "Show buffers" })
    map("n", "<leader>eg", "<cmd>Neotree float git_status<cr>", { desc = "Show Git Status" })

    -- vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
  end
}
