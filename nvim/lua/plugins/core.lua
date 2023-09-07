return {
	{
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({})
		end,
	},	
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>e",
				":NeoTreeShow<CR>",
				desc = "Explorer NeoTree",
				remap = true,
			},
		},
		branch = "v2.x",
	},
		{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = {
			{
				"<leader>t",
				":ToggleTerm direction=horizontal size=10<CR>",
				desc = "Open a new Terminal",
				remap = true,
			},
			{
				"<leader>T",
				":ToggleTerm direction=float <CR>",
				desc = "Open a new Terminal",
				remap = true,
			},
			{
				"<leader>m",
				":ToggleTerm direction=tab <CR>",
				desc = "Open a new Terminal",
				remap = true,
			},
		},
		config = function()
			require("toggleterm").setup({ shade_terminals = true })
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		},
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({})
		end,
	},
	{ "kdheepak/lazygit.nvim" }, -- AutoCompletion, Syntax, linter & formatter
		
			{ "folke/trouble.nvim" },
		{
		"feline-nvim/feline.nvim",
		branch = "0.5-compat",
		config = function()
			require("feline").setup({})
		end,
	},
	{ "nvim-pack/nvim-spectre" },
	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup({})
		end,
	},	
	{
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({ keys = "azerqsdfwxc" })
		end,
	},
	{ "romgrk/barbar.nvim" }
}
