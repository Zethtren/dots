return {
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<c-g>", "<cmd>ChatGPT<CR>", remap = true },
      { "<c-e>", "<cmd>ChatGPTEditWithInstructions<CR>", remap = true },
      { "<c-a>", "<cmd>ChatGPTActAs<CR>", remap = true },
    },
  },
}
