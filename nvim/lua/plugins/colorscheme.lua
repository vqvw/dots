return {
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
      local palette = require("github-theme.palette").load("github_dark_default")
      require("github-theme").setup({
        options = {
          hide_end_of_buffer = false,
          hide_nc_statusline = false,
          styles = {
            comments = "italic",
          },
          transparent = true,
        },
        groups = {
          all = {
            FloatBorder = { bg = "none", fg = palette.scale.gray[4] },
            FzfLuaBorder = { fg = palette.scale.gray[4] },
            LspInfoBorder = { bg = "none", fg = palette.scale.gray[4] },
            NormalFloat = { bg = "none", fg = palette.scale.gray[1] },
            Pmenu = { bg = "none", fg = palette.scale.gray[4] },

            StatusLine = { bg = palette.scale.gray[9], fg = palette.scale.gray[2] },
            StatusLineNC = { bg = palette.scale.gray[9], fg = palette.scale.gray[4] },

            DiffAdd = { bg = palette.scale.green[10], fg = "none" },
            DiffChange = { bg = palette.scale.yellow[10], fg = "none" },
            DiffText = { bg = palette.scale.yellow[8], fg = "none" },
            Directory = { fg = palette.blue.base },
            Folded = { bg = palette.scale.gray[8], fg = palette.scale.gray[4] },
            GitSignsCurrentLineBlame = { fg = palette.scale.gray[6] },
            LineNr = { bg = "none", fg = palette.scale.gray[6] },
            LspSignatureActiveParameter = { bg = "none", fg = palette.blue.base },
            TabLine = { bg = palette.scale.black, fg = palette.scale.gray[6] },
            TabLineFill = { bg = palette.scale.black, fg = palette.scale.gray[6] },
            TabLineSel = { bg = palette.scale.gray[9], fg = palette.scale.gray[1] },
            QuickFixLine = { bg = palette.scale.gray[8], fg = "none" },
          },
        },
      })
      vim.cmd.colorscheme("github_dark_default")
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    event = "VeryLazy",
    opts = {
      transparent = true,
      color_overrides = {
        vscLeftMid = "none",
      },
    },
  },
}
