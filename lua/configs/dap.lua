local dap = require "dap"

local map = vim.keymap.set
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

map("n", "<leader>dc", dap.continue, opts "[C]ontinue")
map("n", "<leader>dn", dap.step_over, opts "[N]ext (step-over)")
map("n", "<leader>di", dap.step_into, opts "Step [I]nto")
map("n", "<leader>do", dap.step_out, opts "Step [O]ut")
map("n", "<leader>dp", dap.pause, opts "[P]ause")
map("n", "<leader>ds", dap.terminate, opts "[S]top (terminate)")
map("n", "<leader>db", dap.toggle_breakpoint, opts "Toggle [B]reakpoint")
map("n", "<leader>dB", function()
  dap.set_breakpoint(vim.fn.input "Breakpoint condition: ")
end, opts "Add conditional [B]reakpoint")
map("n", "<leader>dl", function()
  dap.set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
end, opts "Add [L]ogging")
map("n", "<leader>dr", dap.repl.open, opts "[R]EPL")
-- map("n", "<leader>de", dap.repl.run_last, opts())
