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
        local DarkBg = "#09091b"
        local LightBg = "#1a1b2f"

        UpdateHl("DraculaBoundary", { fg = "NvimDarkGrey4" })
        UpdateHl("DraculaComment", { italic = true })
        UpdateHl("LineNr", { bg = LightBg })
        UpdateHl("SignColumn", { bg = LightBg })

        SetHl("@lsp.type.class.markdown", { fg = GetHl("DraculaCyan").fg, underline = true })
        SetHl("@markup.heading", { fg = GetHl("DraculaYellow").fg, bold = true })
        SetHl("@markup.link.label.markdown_inline", { fg = GetHl("DraculaCyan").fg, underline = true })
        SetHl("@markup.link.label.markdown_inline", { fg = GetHl("White").fg })
        SetHl("@markup.link.markdown_inline", { fg = GetHl("White").fg })
        SetHl("@markup.list", { fg = GetHl("DraculaPink").fg })
        SetHl("@markup.list.checked.markdown", { fg = GetHl("DraculaPink").fg })
        SetHl("@markup.list.unchecked.markdown", { fg = GetHl("DraculaPink").fg })
        SetHl("@property.css", { fg = GetHl("DraculaOrange").fg })
        SetHl("@property.json", { fg = GetHl("DraculaCyan").fg })
        SetHl("@property.scss", { fg = GetHl("DraculaOrange").fg })
        SetHl("@property.toml", { fg = GetHl("DraculaCyan").fg })
        SetHl("@property.yaml", { fg = GetHl("DraculaCyan").fg })
        SetHl("CmpItemAbbrMatch", { fg = GetHl("DraculaCyan").fg, bold = true })
        SetHl("CmpItemAbbrMatchFuzzy", { fg = GetHl("DraculaYellow").fg })
        SetHl("CursorLineNr", { fg = GetHl("DraculaYellow").fg, bg = LightBg })
        SetHl("DiffviewFilePanelSelected", { fg = GetHl("DraculaYellow").fg, bold = true })
        SetHl("DiffviewFolderSign", { link = "DiffviewFolderName" })
        SetHl("DiffviewNormal", { bg = DarkBg })
        SetHl("DiffviewStatusModified", { link = "DiagnosticWarn" })
        SetHl("Directory", { fg = GetHl("DraculaCyan").fg })
        SetHl("EndOfBuffer", { fg = GetHl("DraculaComment").fg })
        SetHl("FloatBorder", { fg = GetHl("DraculaBgLighter").bg })
        SetHl("FoldColumn", { fg = GetHl("DraculaComment").fg, bg = LightBg })
        SetHl("Folded", { fg = GetHl("DraculaBgLighter").bg, bg = DarkBg })
        SetHl("FzfLuaBorder", { fg = GetHl("DraculaBgLighter").bg })
        SetHl("FzfLuaTitle", { link = "@markup.heading" })
        SetHl("GitSignsAdd", { fg = GetHl("DraculaGreen").fg })
        SetHl("GitSignsChange", { fg = GetHl("DraculaOrange").fg })
        SetHl("MatchParen", { bg = GetHl("DraculaBgLighter").bg })
        SetHl("Pmenu", {})
        SetHl("QuickFixLine", { fg = GetHl("DraculaYellow").fg, bold = true })
        SetHl("StatusLine", { bg = LightBg })
        SetHl("StatusLineNC", { fg = GetHl("DraculaComment").fg, bg = LightBg })
        SetHl("TabLine", { fg = GetHl("DraculaComment").fg, bg = LightBg })
        SetHl("TabLineFill", { bg = LightBg })
        SetHl("TabLineSel", { bg = LightBg, bold = true })
        SetHl("VertSplit", { bg = "red" })
        SetHl("Visual", { bg = GetHl("DraculaBgLight").bg })
        SetHl("WarningMsg", { link = "@markup.heading" })
        SetHl("WinSeparator", { fg = GetHl("DraculaBgLight").bg, bg = LightBg })

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
