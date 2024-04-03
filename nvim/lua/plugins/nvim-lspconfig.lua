return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.bashls.setup({ capabilities = capabilities })
    lspconfig.emmet_language_server.setup({ capabilities = capabilities })
    lspconfig.gopls.setup({ capabilities = capabilities })
    lspconfig.html.setup({ capabilities = capabilities })
    lspconfig.jdtls.setup({ capabilities = capabilities })
    lspconfig.marksman.setup({ capabilities = capabilities })
    lspconfig.tailwindcss.setup({ capabilities = capabilities })

    lspconfig.cssls.setup({
      capabilities = capabilities,
      settings = {
        css = {
          validate = true,
          lint = { unknownAtRules = "ignore" },
        },
      },
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      commands = {
        ExpandMacro = {
          function()
            vim.lsp.buf_request_all(0, "rust-analyzer/expandMacro", vim.lsp.util.make_position_params(), vim.print)
          end,
        },
      },
    })

    lspconfig.tsserver.setup({
      capabilities = capabilities,
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
      callback = function(ev)
        Map("i", "<C-s>", vim.lsp.buf.signature_help, "Signature help", ev)
        Map("n", "crn", vim.lsp.buf.rename, "Rename symbol", ev)
        Map("n", "gd", vim.lsp.buf.definition, "Definitions", ev)
        Map("n", "gD", vim.lsp.buf.type_definition, "Go to type definiton", ev)
        Map("n", "gi", vim.lsp.buf.implementation, "Implementation", ev)
        Map("n", "gr", vim.lsp.buf.references, "References", ev)
        Map("n", "<leader>o", "<Cmd>OrganizeImports<CR>", "Organise imports")
        Map("n", "<leader>e", "<Cmd>ExpandMacro<CR>", "Expand macro")
        Map("n", "<leader>d", vim.diagnostic.setqflist, "Add diagnostics to quickfix")
        Map({ "n", "v" }, "crr", vim.lsp.buf.code_action, "Code action", ev)
      end,
    })

    vim.diagnostic.config({
      underline = true,
      virtual_text = false,
      signs = true,
      float = true,
      update_in_insert = false,
      severity_sort = true,
    })

    vim.diagnostic.config({ float = { border = border } })
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })
    require("lspconfig.ui.windows").default_options.border = border
  end,
}
