local function remap_pywal()
    local c = require("neopywal").get_colors()
    local set = vim.api.nvim_set_hl
    local get = vim.api.nvim_get_hl

    local function recolor(group, color)
        local hl = get(0, { name = group, link = false })

        if hl then
            hl.fg = color
            set(0, group, hl)
        end
    end

    -- Uncomment the groups you want to change
    -- Comments
    -- recolor("Comment", c.color8)

    -- Strings
    recolor("String", c.color2)
    recolor("Character", c.color2)

    -- Numbers
     -- recolor("Number", c.color0)
     -- recolor("Boolean", c.color0)

    -- Functions
    recolor("Function", c.color1)
    recolor("@function.call", c.color1)
    
    -- Keywords
    recolor("Keyword", c.color4)

    -- Types
    recolor("Type", c.color13)

    -- Constants
    -- recolor("Constant", c.color5)
end


return {
    {
        "RedsXDD/neopywal.nvim",
	enabled = false,
        config = function()
            require("neopywal").setup({
                transparent_background = true,
            })

--            vim.cmd.colorscheme("neopywal-dark")
            vim.cmd.colorscheme("auto")

            remap_pywal()

            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "neopywal*",
                callback = remap_pywal,
            })
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "neopywal",
        },
    },
}
--to re-enable uncomment neopywal=dark line and set enabled = false to true also comment out colorscheme auto line
