return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function ()
    local wk = require("which-key")
    wk.add({
      { "<leader>f", group = "Telescope" },
      { "<leader>e", group = "Explorer" },
      { "<leader>l", group = "LSP"},
      { "<leader>t", group = "Tabs"},
      { "<leader>s", group = "Windows"},
      { "<leader>b", group = "Buffers"},
      { "<leader>g", group = "Git"},
      { "<leader>u", group = "AutoSession"},
      { "<leader>r", group = "Trouble"}

    })
    wk.setup({
      triggers = {
        { "<auto>", mode = "n" }
      }
    })
  end
}
