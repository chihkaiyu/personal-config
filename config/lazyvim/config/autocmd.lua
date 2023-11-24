-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "yaml" },
	callback = function()
	  vim.opt.tabstop = 2
	  vim.opt.shiftwidth = 2
	  vim.opt.expandtab = true
	end,
  })
  
  vim.api.nvim_create_autocmd("FileType", {
	pattern = {
	  "go",
	  "lua",
	},
	callback = function()
	  vim.opt.tabstop = 4
	  vim.opt.shiftwidth = 4
	  vim.opt.expandtab = false
	end,
  })
  