-- Window navigation
Map("n", "<C-h>", "<C-w>h", "Navigate to window left")
Map("n", "<C-j>", "<C-w>j", "Navigate to window down")
Map("n", "<C-k>", "<C-w>k", "Navigate to window up")
Map("n", "<C-l>", "<C-w>l", "Navigate to window right")

-- <C-l> replacement
Map("n", "<leader>l", "<Cmd>normal! <C-l><CR>", "Default action of <C-l>")

-- Window resizing
Map("n", "<M-h>", "<Cmd>vertical resize -2<CR>", "Resize window left")
Map("n", "<M-j>", "<Cmd>resize +2<CR>", "Resize window down")
Map("n", "<M-k>", "<Cmd>resize -2<CR>", "Resize window up")
Map("n", "<M-l>", "<Cmd>vertical resize +2<CR>", "Resize window right")

-- Git show
Map("n", "<leader>gs", GitShow, "Open new tab and run `git show <ref>`")

-- Tabs
Map("n", "<C-t>", "<Cmd>tabe<CR>", "New tab")
Map("n", "<C-Del>", "<Cmd>tabc<CR>", "Close tab")

-- Copy current file path to clipboard
Map("n", "<leader>%", "<Cmd>let @+=@%<CR>", "Copy current file path to clipboard")

-- Minify JSON
Map("n", "<leader>j", "<Cmd>%!jq -c<CR>", "Minify JSON")

-- Quickfix navigation
Map("n", "<C-n>", "<Cmd>cnext | norm zz<CR>", "Next quickfix item")
Map("n", "<C-p>", "<Cmd>cprev | norm zz<CR>", "Previous quickfix item")

-- Toggle relativenumber
Map("n", "<leader>n", "<Cmd>set relativenumber!<CR>", "Toggle relativenumber")

-- Toggle hlsearch
Map("n", "<leader>h", "<Cmd>set hlsearch!<CR>", "Toggle hlsearch")

-- Toggle word wrap
Map("n", "<leader>w", "<Cmd>set wrap!<CR>", "Toggle word wrap")

-- View messages
Map("n", "<leader>m", "<Cmd>messages<CR>", "View messages")

-- Snippets
Map({ "i", "s" }, "<Tab>", Snippet.jumpForwards, "Snippet jump forwards")
Map({ "i", "s" }, "<S-Tab>", Snippet.jumpBackwards, "Snippet jump backwards")

-- Terminal mode
Map("t", "<Esc>", "<C-\\><C-n>", "Exit terminal-mode")

-- Command mode
Map("c", "<C-j>", "<C-n>", "Next list item")
Map("c", "<C-k>", "<C-p>", "Previous list item")
