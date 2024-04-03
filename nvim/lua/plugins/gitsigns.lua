return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    preview_config = {
      border = border,
    },
    on_attach = function()
      local gs = package.loaded.gitsigns

      Map("n", "]h", gs.next_hunk, "Next hunk")
      Map("n", "[h", gs.prev_hunk, "Prev hunk")
      Map("n", "<leader>gr", gs.reset_buffer, "Reset buffer")
      Map("n", "<leader>ghb", gs.blame_line, "Show blame")
      Map("n", "<leader>ghp", gs.preview_hunk, "Preview hunk")
      Map("n", "<leader>ghr", gs.reset_hunk, "Reset hunk")

      Map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Hunk textobject")
    end,
  },
}
