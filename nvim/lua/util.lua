function Map(mode, lhs, rhs, desc, ev)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc, buffer = ev and ev.buf or nil })
end

function GitShow()
  vim.cmd.normal('"nyiw')
  local hash = vim.fn.getreg("n")
  vim.cmd.tabe()
  vim.cmd.term(string.format("git show %s", hash))
end

Snippet = {
  jumpForwards = function()
    if vim.snippet.active({ direction = 1 }) then
      vim.snippet.jump(1)
    else
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
  end,
  jumpBackwards = function()
    if vim.snippet.active({ direction = -1 }) then
      vim.snippet.jump(-1)
    else
      vim.cmd.normal("V<")
    end
  end,
}
