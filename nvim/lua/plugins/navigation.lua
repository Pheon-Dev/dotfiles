local enable = require("config").enable

local oil = require("config.navigation.oil")
local harpoon = require("config.navigation.harpoon")
local antelope = require("config.navigation.antelope")
local which_key = require("config.navigation.which-key")

local default_event = require("config.event").default

local M = {
  {
    "folke/which-key.nvim",
    enabled = enable.which_key,
    event = default_event,
    config = which_key.config,
  },
  {
    "ThePrimeagen/harpoon",
    enabled = enable.harpoon,
    config = harpoon.config,
  },
  {
    "Pheon-Dev/antelope",
    enabled = enable.antelope,
    event = default_event,
    config = antelope.config,
  },
  {
    'stevearc/oil.nvim',
    enable = enable.oil,
    event = default_event,
    dependencies = oil.dependencies,
    config = oil.config,
  },
}

return M
