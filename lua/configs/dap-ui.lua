local dap, dapui = require "dap", require "dapui"
dapui.setup()

local map = vim.keymap.set
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

map("n", "<leader>dh", require("dap.ui.widgets").hover, opts "[H]over")
map("n", "<leader>du", dapui.toggle, opts "[U]I")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
