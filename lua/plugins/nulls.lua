local augroup = vim.api.nvim_create_augroup("LspFormatting", {})


return {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
        "williamboman/mason.nvim", "jose-elias-alvarez/null-ls.nvim"
    },
    --event = "BufRead",
    lazy = false,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.formatting.lua_format,
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettierd
            },

            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format()
                            -- vim.lsp.buf.formatting_sync()
                        end
                    })
                end
            end
        })
    end
}
