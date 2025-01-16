return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      always_show_bufferline = false,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
    },
  },
}
