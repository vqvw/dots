return {
  "nvim-java/nvim-java",
  config = function()
    require("java").setup()
    require("lspconfig").jdtls.setup({
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
