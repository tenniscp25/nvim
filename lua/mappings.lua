require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
