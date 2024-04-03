-- Undo dir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Grep
vim.opt.grepprg = "rg -i --vimgrep"

-- Line numbers
vim.opt.number = true

-- Cursor line highlight
vim.opt.cursorline = true
vim.opt.cursorlineopt = { "number" }

-- Search
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- List chars
vim.opt.list = true
vim.opt.listchars:append({ tab = "> ", nbsp = "•" })

-- Tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Splits
vim.opt.splitright = true

-- Keep the sign column open
vim.opt.signcolumn = "yes"

-- Minimum number of lines always above/below the cursor
vim.opt.scrolloff = 4

-- Share yank/paste with system clipboard
vim.opt.clipboard = "unnamedplus"

-- Word wrap
vim.opt.wrap = false
