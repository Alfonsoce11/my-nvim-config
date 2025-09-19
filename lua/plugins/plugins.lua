return {
	{
  	"nvim-treesitter/nvim-treesitter",
  	branch = "master",
  	lazy = false,
  	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup {
          highlight = { enable = true },
          indent = { enable = true },
          ensure_installed = { "c", "python", "javascript", "html", "css", "lua", "java", "rust", "go", "c_sharp", "cpp", "json", "markdown", "bash", "typescript" }
      	}
	end,
	},
	{
	'nvim-lualine/lualine.nvim',
  	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require("lualine").setup({
			options = { theme = 'onedark'--[['tokyonight']] }
		})
	end,
	},
	{
	'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
	'wakatime/vim-wakatime', 
	lazy = false,
	},
	{
	"zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"onedark", "tokyonight-night", "tokyonight-moon", "tokyonight-storm"}, -- Your list of installed colorschemes.
  	    livePreview = true, -- Apply theme while picking. Default to true.
	})
	end,
	},
	{
	--"folke/tokyonight.nvim",
	"navarasu/onedark.nvim",
  	priority = 1000, -- make sure to load this before all the other start plugins
  	config = function()
    require('onedark'--[['tokyonight']]).setup {
      style = 'deep' --'night'
    }
    -- Enable theme
    require('onedark'--[['tokyonight']]).load()
  	end,
	},
	{
	"folke/tokyonight.nvim",
  	priority = 500, -- make sure to load this before all the other start plugins
  	config = function()
    require('tokyonight').setup {
      style = 'night'
    	}
	end,
	},
	{
"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
    "nvim-tree/nvim-web-devicons",
 	 },
  	config = function()
    require("nvim-tree").setup {}
  	end,
	},
	{
	'norcalli/nvim-colorizer.lua',
	config = function()
		require 'colorizer'.setup()
	end,
	},
	{
	'lewis6991/gitsigns.nvim',
	config = function()
		require('gitsigns').setup {
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable = true,
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
}
	end,
	},
	{
		'akinsho/toggleterm.nvim', 
		version = "*", 
		config = true,
		
	}
}
