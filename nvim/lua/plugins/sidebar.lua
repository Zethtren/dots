return {
  {
    "sidebar-nvim/sidebar.nvim",
    opts = {
      open = true,
      sections = {
        "datetime",
        "git-status",
        "lsp-diagnostics",
        "containers",
      },
      side = "right",
      initial_width = 35,
    },
  },
}
