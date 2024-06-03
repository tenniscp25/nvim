require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.clipboard = ""
o.relativenumber = false

vim.g.rustaceanvim = {
  -- Plugin configuration
  -- tools = {},
  -- LSP configuration
  server = {
    -- on_attach = function(client, bufnr)
    --
    -- end,
    default_settings = {
      ["rust-analyzer"] = {
        inlayHints = {
          typeHints = true,
          parameterHints = true,
          closureReturnTypeHints = "always",
          expressionAdjustmentHints = "prefix",
          lifetimeElisionHints = "always",
          reborrowHints = "always",
        },
      },
    },
  },
  dap = {
    adapter = require("rustaceanvim.config").get_codelldb_adapter(
      "/Users/tenniscp25/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/adapter/codelldb",
      "/Users/tenniscp25/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/lldb/lib/liblldb.dylib"
    ),
  },
  -- DAP configuration
  -- dap = {},
}

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
