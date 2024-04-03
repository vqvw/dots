return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },
  lazy = false,
  keys = {
    { "<leader>/", "<Cmd>FzfLua live_grep_glob<CR>", desc = "Live grep" },
    { "<leader>:", "<Cmd>FzfLua commands<CR>", desc = "Search commands" },
    { "<leader><Tab>", "<Cmd>FzfLua tabs<CR>", desc = "Search tabs" },
    { "<leader><leader>", "<Cmd>FzfLua files<CR>", desc = "Search find files" },
    --
    { "<leader>sc", "<Cmd>FzfLua commands<CR>", desc = "Colorschemes" },
    { "<leader>sd", "<Cmd>FzfLua diagnostics_workspace<CR>", desc = "Diagnostics" },
    { "<leader>sf", "<Cmd>FzfLua filetypes<CR>", desc = "Filetypes" },
    { "<leader>sgs", "<Cmd>FzfLua git_status<CR>", desc = "Git status" },
    { "<leader>sh", "<Cmd>FzfLua help_tags<CR>", desc = "Help tags" },
    { "<leader>sj", "<Cmd>FzfLua jumps<CR>", desc = "Jumplist" },
    { "<leader>sk", "<Cmd>FzfLua keymaps<CR>", desc = "Keymaps" },
    { "<leader>sl", "<Cmd>FzfLua blines<CR>", desc = "Search buffer lines" },
    { "<leader>sm", "<Cmd>FzfLua marks<CR>", desc = "Marks" },
    { "<leader>so", "<Cmd>FzfLua oldfiles<CR>", desc = "Oldfiles" },
    { "<leader>sp", "<Cmd>FzfLua buffers<CR>", desc = "Search buffers" },
    { "<leader>sr", "<Cmd>FzfLua resume<CR>", desc = "Resume" },
    { "<leader>ss", "<Cmd>FzfLua lsp_document_symbols<CR>", desc = "Document symbols" },
    { "<leader>sw", "<Cmd>FzfLua grep_cword<CR>", desc = "Grep word under cursor" },
  },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        backdrop = 100,
        border = border,
        preview = { hidden = "hidden" },
      },
    })
  end,
}
