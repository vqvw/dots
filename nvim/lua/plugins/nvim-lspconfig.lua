return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.bashls.setup({})
    lspconfig.dartls.setup({})
    lspconfig.emmet_language_server.setup({})
    lspconfig.gopls.setup({})
    lspconfig.html.setup({})
    lspconfig.jdtls.setup({})
    lspconfig.marksman.setup({})
    lspconfig.tailwindcss.setup({})
    lspconfig.terraformls.setup({})
    lspconfig.gradle_ls.setup({})

    lspconfig.cssls.setup({
      settings = {
        css = {
          validate = true,
          lint = { unknownAtRules = "ignore" },
        },
      },
    })

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    lspconfig.rust_analyzer.setup({
      commands = {
        ExpandMacro = {
          function()
            vim.lsp.buf_request_all(0, "rust-analyzer/expandMacro", vim.lsp.util.make_position_params(), vim.print)
          end,
        },
      },
    })

    lspconfig.ts_ls.setup({
      commands = {
        OrganizeImports = {
          function()
            vim.lsp.buf.execute_command({
              command = "_typescript.organizeImports",
              arguments = { vim.api.nvim_buf_get_name(0) },
            })
          end,
        },
      },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function()
        Map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        Map("n", "<leader>o", "<Cmd>OrganizeImports<CR>", "Organise imports")
        Map("n", "<leader>e", "<Cmd>ExpandMacro<CR>", "Expand macro")
        Map("n", "<leader>d", vim.diagnostic.setqflist, "Add diagnostics to quickfix")
      end,
    })

    vim.diagnostic.config({ update_in_insert = true })
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })
  end,
}
