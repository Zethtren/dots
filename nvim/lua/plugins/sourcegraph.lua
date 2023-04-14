return {
  {
    "sourcegraph/sg.nvim",
    build = "cargo build --workspace",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    -- config = function()
    -- require("sg").setup()
    -- end,
  },
}
