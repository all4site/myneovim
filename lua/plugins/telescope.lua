return {

    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        defaults = {
            file_ignore_patterns = {
                "node_modules"
            },

        }
    }
}
