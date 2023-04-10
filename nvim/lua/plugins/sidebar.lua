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
        -- require("dap-sidebar-nvim.breakpoints"),
      },
    },
  },
}
