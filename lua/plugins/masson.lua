return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        opts = {}
    }, {

    'williamboman/mason-lspconfig.nvim',
    cmd = { "LspInstall", "LspUninstall" },
    opts = { automatic_installation = true }

}, {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim", "jose-elias-alvarez/null-ls.nvim"
    },

    opts = { automatic_installation = true }
}

}
