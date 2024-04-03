return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-path" },
  opts = function()
    local cmp = require("cmp")
    return {
      mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.complete(),
        ["<C-q>"] = cmp.mapping.abort(),
        ["<C-e>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping.scroll_docs(-4),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      }),
      sources = {
        { name = "nvim_lsp" },
        { name = "path" },
      },
      window = {
        completion = { border = border },
        documentation = { border = border },
      },
    }
  end,
}
