return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "rcarriga/nvim-notify",
    },
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        -- cmdline = {
        --     view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
        --     format = {
        --         cmdline = { pattern = "^:", icon = "|>", lang = "vim", title = "" },
        --     }
        -- },
        -- views = {
        --     cmdline_popup = {
        --         size = {
        --             height = "auto",
        --             width = "90%",
        --         },
        --         position = {
        --             row = "90%",
        --             col = "50%",
        --         },
        --         border = {
        --             style = "single"
        --         },
        --     },
        -- },
    },

}
