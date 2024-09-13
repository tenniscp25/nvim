local harpoon = require "harpoon"
harpoon:setup()
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
    .new({}, {
      prompt_title = "Harpoon",
      finder = require("telescope.finders").new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end
local map = vim.keymap.set

map("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "Harpoon [A]dd" })
map("n", "<leader>hd", function()
  harpoon:list():remove()
end, { desc = "Harpoon [D]elete" })
map("n", "<leader>hl", function()
  toggle_telescope(harpoon:list())
end, { desc = "Harpoon [L]ist" })
map("n", "<C-1>", function()
  harpoon:list():select(1)
end, {})
map("n", "<C-2>", function()
  harpoon:list():select(2)
end, {})
map("n", "<C-3>", function()
  harpoon:list():select(3)
end, {})
map("n", "<C-4>", function()
  harpoon:list():select(4)
end, {})
map("n", "<leader>hp", function()
  harpoon:list():prev()
end, { desc = "Harpoon [P]revious" })
map("n", "<leader>hn", function()
  harpoon:list():next()
end, { desc = "Harpoon [N]ext" })
