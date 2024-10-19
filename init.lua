vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " " 

vim.o.number = true
vim.o.relativenumber = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Telescope
require("lazy").setup("plugins")

-- Keymap Setups
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
-- Catpuccin / Color Scheme Setup
vim.cmd.colorscheme "catppuccin"

--Syntax Highlighters
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "css", "html", "json", "python", "javascript"},
  highlight = {enable = true},
  indent = {enable = true}
})
