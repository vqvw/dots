return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  keys = {
    {
      mode = { "n", "v" },
      "gq",
      function()
        require("conform").format({ lsp_fallback = true })
      end,
      desc = "Format",
    },
  },
  opts = {
    formatters_by_ft = {
      -- Shell
      bash = { "beautysh" },
      sh = { "beautysh" },
      zsh = { "beautysh" },
      -- Go
      go = { "goimports" },
      -- Prettier
      css = { "prettierd" },
      html = { "prettierd" },
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
      scss = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      yaml = { "prettierd" },
      -- Lua
      lua = { "stylua" },
      -- SQL
      sql = { "sql_formatter" },
    },
    formatters = {
      beautysh = {
        prepend_args = { "-i", "2", "-s", "fnpar" },
      },
      sql_formatter = {
        prepend_args = { "-c", vim.fn.stdpath("config") .. "/lua/plugins/conform/sql/config.json" },
      },
    },
  },
}
