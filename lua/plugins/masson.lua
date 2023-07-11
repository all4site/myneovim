return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        opts = {}
    },

    {
        'williamboman/mason-lspconfig.nvim',
        build = ':MasonUpdate',
        cmd = { "LspInstall", "LspUninstall" },
        opts = {
            automatic_installation = true,
            ensure_installed = { "lua_ls", "tsserver", "html", "cssls", "tailwindcss" }
        }
    },

    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = function()
            require("mason-null-ls").setup({
                automatic_installation = true,
                ensure_installed = {
                    "prettierd",
                    "eslint_d"
                }
            })
        end

    }

}
