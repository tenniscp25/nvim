require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.clipboard = ""
o.relativenumber = true

local data_path = vim.fn.stdpath "data"

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
      data_path .. "/mason/packages/codelldb/extension/adapter/codelldb",
      data_path .. "/mason/packages/codelldb/extension/lldb/lib/liblldb.dylib"
    ),
  },
}

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.cmd "highlight! link GitSignsCurrentLineBlame Comment"
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd "highlight! link GitSignsCurrentLineBlame Comment"
  end,
})
