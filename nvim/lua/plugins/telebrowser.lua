return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("file_browser")
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("zoxide")
    end,
    opts = {
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {},
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
        zoxide = {},
      },
    },
    keys = {
      { "<c-/>", "<cmd>Telescope file_browser theme=ivy<cr>", remap = true },
      { "<c-z>", "<cmd>Telescope zoxide list<CR>", remap = true },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  {
    "jvgrootveld/telescope-zoxide",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
