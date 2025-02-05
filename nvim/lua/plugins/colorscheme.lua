return {
  {
    "dracula/vim",
    name = "dracula",
    priority = 1000,
    config = function()
      vim.g.dracula_colorterm = false
      vim.g.dracula_full_special_attrs_support = true
      vim.g.dracula_italic = true
      vim.g.dracula_strikethrough = true
      vim.g.dracula_undercurl = true

      function DraculaCustomisation()
        UpdateHl("DraculaBoundary", { fg = "NvimDarkGrey4" })
        UpdateHl("DraculaComment", { italic = true })
        UpdateHl("StatusLine", { bg = GetHl("DraculaBgLight").bg })
        UpdateHl("StatusLineNC", { bg = GetHl("DraculaBgDark").bg })

        SetHl("@markup.heading", { fg = GetHl("DraculaCyan").fg, bold = true })
        SetHl("@property.css", { fg = GetHl("DraculaOrange").fg })
        SetHl("@property.json", { fg = GetHl("DraculaCyan").fg })
        SetHl("@property.scss", { fg = GetHl("DraculaOrange").fg })
        SetHl("@property.toml", { fg = GetHl("DraculaCyan").fg })
        SetHl("@property.yaml", { fg = GetHl("DraculaCyan").fg })
        SetHl("CmpItemAbbrMatch", { fg = GetHl("DraculaCyan").fg, bold = true })
        SetHl("CmpItemAbbrMatchFuzzy", { fg = GetHl("DraculaYellow").fg })
        SetHl("DiffviewFilePanelSelected", { fg = GetHl("DraculaYellow").fg, bold = true })
        SetHl("DiffviewFolderSign", { link = "DiffviewFolderName" })
        SetHl("DiffviewNormal", { bg = "#0c0d1c" })
        SetHl("DiffviewStatusModified", { link = "DiagnosticWarn" })
        SetHl("Directory", { fg = GetHl("DraculaCyan").fg })
        SetHl("EndOfBuffer", { fg = GetHl("DraculaComment").fg })
        SetHl("FloatBorder", { fg = GetHl("DraculaBgLighter").bg })
        SetHl("FzfLuaBorder", { fg = GetHl("DraculaBgLighter").bg })
        SetHl("FzfLuaTitle", { link = "@markup.heading" })
        SetHl("GitSignsAdd", { fg = GetHl("DraculaGreen").fg })
        SetHl("GitSignsChange", { fg = GetHl("DraculaOrange").fg })
        SetHl("MatchParen", { bg = GetHl("DraculaBgLighter").bg })
        SetHl("Pmenu", {})
        SetHl("QuickFixLine", { fg = GetHl("DraculaYellow").fg, bold = true })
        SetHl("TabLine", { bg = GetHl("DraculaBgDark").bg })
        SetHl("TabLineFill", { bg = GetHl("DraculaBgDark").bg })
        SetHl("TabLineSel", { bg = GetHl("DraculaBgLight").bg, bold = true })
        SetHl("Visual", { bg = GetHl("DraculaBgLight").bg })
        SetHl("WarningMsg", { link = "@markup.heading" })
        SetHl("WinSeparator", { fg = GetHl("DraculaBgLight").bg })

        local DiffAdd = "#1b3536"
        local DiffChange = "#22263f"
        local DiffChangeLight = "#3f4674"

        SetHl("DiffAdd", { bg = DiffAdd })
        SetHl("DiffChange", { bg = DiffChange })
        SetHl("DiffDelete", { fg = DiffChangeLight })
        SetHl("DiffText", { bg = DiffChangeLight })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function(args)
          if args.match == "dracula" then
            DraculaCustomisation()
          end
        end,
      })

      vim.cmd.colorscheme("dracula")
    end,
  },
}
