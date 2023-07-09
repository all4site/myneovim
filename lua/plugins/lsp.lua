local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.tsserver.setup({})
        lspconfig.lua_ls.setup({})
        lspconfig.cssls.setup({
            filetypes = { "css", "scss", "sass" },
            capabilities = capabilities
        })
    end
}
