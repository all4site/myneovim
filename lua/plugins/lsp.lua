local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.cssls.setup({
            filetypes = { "css", "scss", "sass" },
            capabilities = capabilities
        })
        lspconfig.tailwindcss.setup({
            settings = {
                tailwindCSS = {
                    classAttributes = {
                        "class",
                        "className",
                        "ngClass",
                        "style",
                        "classWrapper"
                    }
                }
            }
        })
    end
}
