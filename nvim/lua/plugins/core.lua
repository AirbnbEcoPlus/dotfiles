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
            }, {
                "<leader>T",
                ":ToggleTerm direction=float <CR>",
                desc = "Open a new Terminal",
                remap = true
            }, {
                "<leader>m",
                ":ToggleTerm direction=tab <CR>",
                desc = "Open a new Terminal",
                remap = true
            }
        },
        config = function()
            require("toggleterm").setup({shade_terminals = true})
        end
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
    }, {"folke/trouble.nvim", dependencies = "nvim-tree/nvim-web-devicons"},
    {"mfussenegger/nvim-dap"}, {
        "jay-babu/mason-nvim-dap.nvim",
        config = function() require("mason-nvim-dap").setup({}) end
    }, {"rcarriga/nvim-dap-ui"}, {
        'feline-nvim/feline.nvim',
        branch = '0.5-compat',
        config = function() require('feline').setup({}) end
    }, {"lukas-reineke/indent-blankline.nvim"}, {"nvim-pack/nvim-spectre"}, {
        "terrortylor/nvim-comment",
        config = function() require('nvim_comment').setup({}) end
    }, {
        'pwntester/octo.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim'
        },
        config = function() require"octo".setup() end
    }, {
        'xeluxee/competitest.nvim',
        dependencies = 'MunifTanjim/nui.nvim',
        config = function() require'competitest'.setup() end
    }, {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function() require'hop'.setup {keys = 'azerqsdfwxc'} end
    }, {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {workspaces = {work = "~/MyLife"}}
                    }
                }
            }
        end
    }, {
        "andweeb/presence.nvim",
        config = function()
            require("presence").setup({
                main_image = "file",
                neovim_image_text = "Le Seul Vrai Editeur de Texte",
                editing_text = "Edition de %s",
                file_explorer_text = "Surf sur %s",
                git_commit_text = "Commit les changements",
                plugin_manager_text = "Rajoute des plugins INCROYABLE",
                reading_text = "Lit %s",
                workspace_text = "Travail sur %s",
                line_number_text = "Ligne %s sur %s"
            })
        end
    }, {"romgrk/barbar.nvim"}
}
