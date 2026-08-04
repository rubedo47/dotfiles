local colors = require("neopywal").colors

local set = vim.api.nvim_set_hl

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "neopywal*",
    callback = function()
        -- Functions
        set(0, "Function", { fg = colors.color4 })
        set(0, "@function", { link = "Function" })
        set(0, "@function.call", { link = "@function" })
        set(0, "@constructor", { fg = colors.color4 })
        set(0, "@method", { fg = colors.color4 })
        set(0, "@method.call", { link = "@method" })

        -- Types
        set(0, "Type", { fg = colors.color6 })
        set(0, "@type", { link = "Type" })
        set(0, "@type.builtin", { link = "Type" })
        set(0, "@type.definition", { link = "Type" })
        set(0, "@type.qualifier", { link = "Keyword" })

        -- Variables
        set(0, "@variable", { fg = colors.foreground })
        set(0, "@variable.builtin", { fg = colors.color1 })
        set(0, "@variable.member", { fg = colors.color5 })
        set(0, "@property", { fg = colors.color5 })
        set(0, "@field", { fg = colors.color5 })
        set(0, "@parameter", { fg = colors.color3 })

        -- Keywords
        set(0, "Keyword", { fg = colors.color1 })
        set(0, "@keyword", { link = "Keyword" })
        set(0, "@keyword.function", { link = "Keyword" })
        set(0, "@keyword.return", { link = "Keyword" })
        set(0, "@keyword.operator", { link = "Keyword" })
        set(0, "@keyword.import", { link = "Keyword" })
        set(0, "@keyword.repeat", { link = "Keyword" })
        set(0, "@keyword.conditional", { link = "Keyword" })
        set(0, "@keyword.exception", { link = "Keyword" })

        -- Strings
        set(0, "String", { fg = colors.color2 })
        set(0, "@string", { link = "String" })
        set(0, "@string.escape", { fg = colors.color3 })
        set(0, "@string.regex", { fg = colors.color3 })
        set(0, "@string.special", { fg = colors.color3 })

        -- Constants
        set(0, "Constant", { fg = colors.color5 })
        set(0, "@constant", { link = "Constant" })
        set(0, "@constant.builtin", { fg = colors.color1 })
        set(0, "@constant.macro", { fg = colors.color1 })

        -- Numbers / Booleans
        set(0, "Number", { fg = colors.color3 })
        set(0, "@number", { link = "Number" })
        set(0, "@float", { link = "Number" })
        set(0, "Boolean", { fg = colors.color3 })
        set(0, "@boolean", { link = "Boolean" })

        -- Operators
        set(0, "Operator", { fg = colors.color1 })
        set(0, "@operator", { link = "Operator" })

        -- Punctuation
        set(0, "@punctuation.delimiter", { fg = colors.foreground })
        set(0, "@punctuation.bracket", { fg = colors.foreground })
        set(0, "@punctuation.special", { fg = colors.color1 })

        -- Namespaces
        set(0, "@module", { fg = colors.color6 })
        set(0, "@module.builtin", { fg = colors.color6 })
        set(0, "@namespace", { fg = colors.color6 })

        -- Attributes
        set(0, "@attribute", { fg = colors.color5 })
        set(0, "@tag.attribute", { fg = colors.color5 })

        -- Tags
        set(0, "@tag", { fg = colors.color1 })
        set(0, "@tag.delimiter", { fg = colors.foreground })

        -- Comments
        set(0, "Comment", { fg = colors.color8, italic = true })
        set(0, "@comment", { link = "Comment" })
        set(0, "@comment.documentation", { link = "Comment" })

        -- Markup
        set(0, "@markup.heading", { fg = colors.color4, bold = true })
        set(0, "@markup.link", { fg = colors.color6, underline = true })
        set(0, "@markup.raw", { fg = colors.color2 })
        set(0, "@markup.quote", { fg = colors.color8 })
        set(0, "@markup.list", { fg = colors.color1 })

        -- Diff
        set(0, "@diff.plus", { fg = colors.color2 })
        set(0, "@diff.minus", { fg = colors.color1 })
        set(0, "@diff.delta", { fg = colors.color3 })
    end,
})

-- Apply immediately if neopywal is already loaded
vim.schedule(function()
    vim.cmd("doautocmd ColorScheme")
end)
