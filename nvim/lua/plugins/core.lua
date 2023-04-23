return {
	{   "Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {}
	end,
    },

    {"wakatime/vim-wakatime"},
    {"joshdick/onedark.vim",
    config = function()
	vim.cmd([[colorscheme onedark]])

    end,
    },
    {"nvim-tree/nvim-tree.lua",
    keys = {
	{ "<leader>e", ":NvimTreeToggle<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
    },
    config = function()
      require("nvim-tree").setup({
	
      })
    end,

    },
    {"nvim-tree/nvim-web-devicons"},
    {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup({})
      end,
    },
    {"rafamadriz/friendly-snippets"},

    {'akinsho/toggleterm.nvim', version = "*", config = true,
    keys = {
	{"<leader>t", ":ToggleTerm direction=horizontal<CR>", desc = "Open a new Terminal", remap = true},
    },
    config = function()
      require("toggleterm").setup({

	})
      end,	
    },
}

