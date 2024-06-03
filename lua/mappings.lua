require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("i", "jk", "<ESC>")
-- map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- move from NvChad's default <leader>ds
map("n", "<leader>ld", vim.diagnostic.setloclist, { desc = "lsp diagnostic loclist" })

-- Map <leader>y to copy to system clipboard in normal and visual modes
-- map("n", "<leader>y", '"+y', { noremap = true, silent = true })
-- map("v", "<leader>y", '"+y', { noremap = true, silent = true })
map("n", "<leader>y", '"+y', { desc = "Copy .. to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Copy selection to system clipboard" })

-- Map <leader>Y to copy the whole line to system clipboard in normal mode
map("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
