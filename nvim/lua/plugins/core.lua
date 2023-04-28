return {
    {
        "Pocco81/auto-save.nvim",
        config = function() require("auto-save").setup({}) end
    }, {"wakatime/vim-wakatime"}, {
        "navarasu/onedark.nvim",
        config = function() vim.cmd([[colorscheme onedark]]) end
    }, {
        "nvim-neo-tree/neo-tree.nvim",
        keys = {
            {
                "<leader>e",
                ":NeoTreeShow<CR>",
                desc = "Explorer NeoTree",
                remap = true
            }
        },
        branch = "v2.x"
    }, {"nvim-lua/plenary.nvim"}, {"nvim-tree/nvim-web-devicons"},
    {"MunifTanjim/nui.nvim"}, {"rafamadriz/friendly-snippets"}, {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
        keys = {
            {
                "<leader>t",
                ":ToggleTerm direction=horizontal size=10<CR>",
                desc = "Open a new Terminal",
                remap = true
            }
        },
        config = function() require("toggleterm").setup({}) end
    }, {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        config = function(_, opts) require("mini.pairs").setup(opts) end
    }, {
        "ahmedkhalf/project.nvim",
        config = function() require("project_nvim").setup({}) end
    }, {"kdheepak/lazygit.nvim"}, -- AutoCompletion, Syntax, linter & formatter
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    }, {"williamboman/mason-lspconfig.nvim"}, {"neovim/nvim-lspconfig"},
    {"hrsh7th/nvim-cmp"}, {"jose-elias-alvarez/null-ls.nvim"},
    {"hrsh7th/cmp-nvim-lsp"}, {"L3MON4D3/LuaSnip"}, {"p00f/nvim-ts-rainbow"}, {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                rainbow = {
                    enable = true,
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil -- Do not enable for files with more than n lines, int
                }
            })
        end
    }, {"folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons"},
    {"mfussenegger/nvim-dap"}, {
        "jay-babu/mason-nvim-dap.nvim",
        config = function() require("mason-nvim-dap").setup({}) end
    }, {
        'feline-nvim/feline.nvim',
        branch = '0.5-compat',
        config = function() require('feline').setup({}) end
    }, {"lukas-reineke/indent-blankline.nvim"}, {"nvim-pack/nvim-spectre"}, {
        "terrortylor/nvim-comment",
        config = function() require('nvim_comment').setup({}) end
    }
    -- Cool plugins not currently implemended "xeluxee/competitest.nvim" , "ggandor/lightspeed.nvim", "pwntester/octo.nvim"

}
