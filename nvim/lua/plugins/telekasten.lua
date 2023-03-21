return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
      home = vim.fn.expand("~/zettel"),
    },
    keys = {
      -- Launch panel if nothing is typed after <leader>z
      { "<leader>Z", "<cmd>Telekasten panel<CR>" },
      { "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "Find Notes" },
      { "<leader>zg", "<cmd>Telekasten search_notes<CR>", desc = "[g]rep Search Notes" },
      { "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "Go To To[d]ay" },
      { "<leader>zz", "<cmd>Telekasten follow_link<CR>", desc = "Follow Link" },
      { "<leader>zn", "<cmd>Telekasten new_note<CR>", desc = "[n]ew Note" },
      { "<leader>zc", "<cmd>Telekasten show_calendar<CR>", desc = "Show [c]alendar" },
      { "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", desc = "Show [b]acklinks" },
      { "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", desc = "Insert [I]mage" },
    },
  },
}
