return {
  "sindrets/diffview.nvim",
  cmd = "DiffviewOpen",
  keys = {
    {
      "<leader>gdd",
      "<Cmd>DiffviewOpen<CR>",
      desc = "Open Diffview",
    },
    {
      "<leader>gdm",
      "<Cmd>DiffviewOpen main..HEAD<CR>",
      desc = "Open Diffview compare to main",
    },
    {
      "<leader>q",
      "<Cmd>DiffviewClose<CR>",
      desc = "Close Diffview",
    },
  },
}
