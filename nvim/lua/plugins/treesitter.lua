return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  init = function(plugin)
    require("lazy.core.loader").add_to_rtp(plugin)
    require("nvim-treesitter.query_predicates")
  end,
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
  },
  opts = {
    highlight = {
      enable = true,
      disable = function(_, bufnr) -- Disable in files with more than 8K lines
        return vim.api.nvim_buf_line_count(bufnr) > 8000
      end,
    },
    indent = { enable = true },
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "jsdoc", "comment", "markdown_inline" },
    auto_install = true,
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]f"] = "@function.outer",
        },
        goto_next_end = {
          ["]F"] = "@function.outer",
        },
        goto_previous_start = {
          ["[f"] = "@function.outer",
        },
        goto_previous_end = {
          ["[F"] = "@function.outer",
        },
      },
    },
  },
  config = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      local added = {}
      opts.ensure_installed = vim.tbl_filter(function(lang)
        if added[lang] then
          return false
        end
        added[lang] = true
        return true
      end, opts.ensure_installed)
    end
    require("nvim-treesitter.configs").setup(opts)
  end,
}
