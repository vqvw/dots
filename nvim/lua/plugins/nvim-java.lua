return {
  "nvim-java/nvim-java",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("java").setup()
    require("lspconfig").jdtls.setup({
      capabilities = capabilities,
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-17",
                path = os.getenv("JAVA_HOME"),
                default = true,
              },
            },
          },
        },
      },
    })
  end,
}
