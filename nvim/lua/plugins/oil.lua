return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({ keymaps = { ["<Esc>"] = "actions.close" } })
  end,
  keys = {
    { "=", "<cmd>Oil<cr>", mode = "n", desc = "Open Filesystem" },
    { "-", "<cmd>Oil --float<cr>", mode = "n", desc = "Open Floating Filesystem" },
  },
}
