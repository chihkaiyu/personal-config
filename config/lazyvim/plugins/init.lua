return {
	-- disable
	{ "lukas-reineke/indent-blankline.nvim", enabled = false },
  
	-- add dracula
	{ "Mofiqul/dracula.nvim" },
  
	-- Configure LazyVim to load gruvbox
	{
	  "LazyVim/LazyVim",
	  opts = {
		colorscheme = "dracula",
	  },
	},
  }
  