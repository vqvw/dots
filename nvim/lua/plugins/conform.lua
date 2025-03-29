return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  keys = {
    {
      mode = { "n", "v" },
      "<F3>",
      function()
        require("conform").format({ lsp_fallback = true })
      end,
      desc = "Format",
    },
  },
  opts = {
    formatters_by_ft = {
      bash = { "beautysh" },
      css = { "prettierd" },
      go = { "goimports" },
      html = { "prettierd" },
      java = { "google-java-format" },
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      json = { "prettierd" },
      lua = { "stylua" },
      markdown = { "prettierd" },
      scss = { "prettierd" },
      sh = { "beautysh" },
      sql = { "sql_formatter" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      yaml = { "prettierd" },
      zsh = { "beautysh" },
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
