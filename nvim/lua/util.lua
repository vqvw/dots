function Map(mode, lhs, rhs, desc, ev)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc, buffer = ev and ev.buf or nil })
end

function GitShow()
  vim.cmd.normal('"nyiw')
  local hash = vim.fn.getreg("n")
  vim.cmd.tabe()
  vim.cmd.term(string.format("git show %s", hash))
end

function GetHl(name)
  return vim.api.nvim_get_hl(0, { name = name })
end

function SetHl(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

function UpdateHl(name, val)
  local ExistingHl = vim.api.nvim_get_hl(0, { name = name })
  for key, value in pairs(val) do
    ExistingHl[key] = value
  end
  vim.api.nvim_set_hl(0, name, ExistingHl)
end

function OrganizeImports()
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      only = { "source.organizeImports" },
    },
  })
end

function RemoveUnusedImports()
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      only = { "source.removeUnusedImports" },
    },
  })
end
