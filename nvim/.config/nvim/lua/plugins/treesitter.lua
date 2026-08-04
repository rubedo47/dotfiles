return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter").setup()

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "lua", "bash", "markdown", "pyton", },
                callback = function()
                    vim.treesitter.start()
                end,
            })

            vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
    },
}
