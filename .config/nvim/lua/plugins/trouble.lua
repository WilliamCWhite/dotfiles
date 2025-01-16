return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  opts = {
    focus = true
  },
  keys = {
    { "<leader>rr", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
    { "<leader>rd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>rq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfixes" },
    { "<leader>rl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
    { "<leader>rt", "<cmd>Trouble todo toggle<CR>", desc = "Open trouble todo list" },
  }
}
