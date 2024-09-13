-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "aquarium",

  hl_override = {
    LspReferenceText = { fg = "green", bg = "grey" },
    LspReferenceRead = { fg = "green", bg = "grey" },
    LspReferenceWrite = { fg = "green", bg = "grey" },
  },
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.mason = {
  pkgs = {
    "rust-analyzer",
    "codelldb",
  },
}

return M
