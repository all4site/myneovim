return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "css",
                "scss",
                "html",
                "javascript",
                "typescript",
                "tsx",
            },

            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
        })
    end
}
