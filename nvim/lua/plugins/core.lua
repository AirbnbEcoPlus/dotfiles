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
                ":Neotree<CR>",
                desc = "Explorer NeoTree",
                remap = true,
            },
        },
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        opts = {
            highlight = {
                enable = true,
            },
        },
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
    },
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        config = function(_, opts)
            require("mini.pairs").setup(opts)
        end,
    },
    { "kdheepak/lazygit.nvim" },
    {
        "saghen/blink.cmp",
        version = "*",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        opts = {
            keymap = {
                preset = "default",
                ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                ['<CR>'] = { 'accept', 'fallback' },
            },
            completion = {
                list = {
                    selection = { preselect = true, auto_insert = true },
                },
            },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono"
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            signature = { enabled = true }
        },
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup {
                options = { theme = 'codedark' }
            }
        end,
    },

    { "romgrk/barbar.nvim" },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
}
