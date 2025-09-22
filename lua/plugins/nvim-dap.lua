return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = function()
    local mason_registry = require "mason-registry"
    local dap = require "dap"
    local netcoredbg_path = "/usr/bin/netcoredbg"
    local dotnet = require "nvim-dap-dotnet"

    if not mason_registry.is_installed "netcoredbg" then
      vim.notify("netcoredbg is not installed. Please install it via :Mason", vim.log.levels.WARN)
      return
    end

    dap.adapters.coreclr = {
      type = "executable",
      command = netcoredbg_path,
      args = { "--interpreter=vscode" },
    }
    dap.adapters.netcoredbg = {
      type = "executable",
      command = netcoredbg_path,
      args = { "--interpreter=vscode" },
    }

    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function() return dotnet.build_dll_path() end,
        env = { ASPNETCORE_ENVIRONMENT = "Production" },
      },
    }
  end,
}
