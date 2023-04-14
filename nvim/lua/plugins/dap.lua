return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.python = {
        type = "executable",
        command = "python",
        args = { "-m", "debugpy.adapter" },
      }
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = "/usr/bin/python",
          justMyCode = false,
        },
      }
      require("dap-python").resolve_python = function()
        return "/usr/bin/python"
      end
    end,
    keys = {
      {
        "<leader>Db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
        remap = true,
      },
      {
        "<leader>Dc",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
        remap = true,
      },
      {
        "<leader>Di",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
        remap = true,
      },
      {
        "<leader>Do",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
        remap = true,
      },
      {
        "<leader>Dr",
        function()
          require("dap").repl.open()
        end,
        desc = "Open REPL",
        remap = true,
      },
      {
        "<leader>Ds",
        function()
          require("dap").continue()
        end,
        desc = "Stop",
        remap = true,
      },
      {
        "<leader>Du",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
        remap = true,
      },
      {
        "<leader>Dw",
        function()
          require("dap").run_last()
        end,
        desc = "Run Last",
        remap = true,
      },
    },
  },
  -- UI
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
    keys = {
      {
        "<leader>DD",
        function()
          require("dapui").toggle()
          require("sidebar-nvim").resize(35)
        end,
        desc = "[D]ebug [D]ata",
        remap = true,
      },
    },
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("telescope").load_extension("dap")
    end,
    keys = {
      {
        "<leader>DC",
        "<cmd>lua require'telescope'.extensions.dap.commands{}<CR>",
        desc = "Show [D]ebug [C]ommands",
        remap = true,
      },
      {
        "<leader>DR",
        "<cmd>lua require'telescope'.extensions.dap.configurations{}<CR>",
        desc = "Show [D]ebug Configu[R]ations",
        remap = true,
      },
      {
        "<leader>DB",
        "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>",
        desc = "Show [D]ebug [B]reakpoint",
        remap = true,
      },
      {
        "<leader>DV",
        "<cmd>lua require'telescope'.extensions.dap.variables{}<CR>",
        desc = "Show [D]ebug [V]ariables",
        remap = true,
      },
      {
        "<leader>DF",
        "<cmd>lua require'telescope'.extensions.dap.frames{}<CR>",
        desc = "Show [D]ebug [F]rames",
        remap = true,
      },
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "leoluz/nvim-dap-go",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
}
