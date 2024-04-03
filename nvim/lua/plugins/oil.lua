return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  keys = {
    { "-", "<Cmd>Oil<CR>", desc = "Oil" },
  },
  opts = {
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
      ["<C-t>"] = false,
      ["<C-v>"] = false,
      ["<C-r>"] = "actions.refresh",
    },
    float = {
      border = border,
    },
    preview = {
      border = border,
    },
    progress = {
      border = border,
    },
    ssh = {
      border = border,
    },
    keymaps_help = {
      border = border,
    },
  },
}
