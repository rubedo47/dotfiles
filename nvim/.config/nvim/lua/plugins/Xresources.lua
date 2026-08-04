return {
{
  'martineausimon/nvim-xresources',
  lazy = false,
  priority = 1000,
  config = function()
    require('nvim-xresources').setup({
    --  Optional config:
    --  xresources_path = os.getenv("HOME") .. '/.Xresources',
    --  auto_light = {
    --    enable = true,
    --    value = 0.5,
    --    exclude = {},
    --  },
    --  contrast = 1,
    --  bold = true,
    --  palette_overrides = {},
    --  fallback_theme = "nord"
    })
    --local C = require('nvim-xresources.colors')
    --require('nvim-xresources').custom_highlight_groups({ })

    vim.cmd('colorscheme xresources')
    -- Comments
    -- below is an example of all possible modifiers 
    -- :lua print(vim.inspect(require("nvim-xresources.colors"))) -- this command will say what hex value is for what c.color scheme -- use the c. colorscheme
    -- vim.api.nvim_set_hl(0, "@group", {
--  fg = "#ffffff",        -- text color
--  bg = "#000000",        -- background color
--  bold = true,           -- bold text
--  italic = true,         -- italic text
--  underline = true,      -- underline
--  undercurl = true,      -- curly underline
--  strikethrough = true,  -- crossed out
--  reverse = true,        -- swap fg/bg
--  link = "OtherGroup",   -- inherit another group
--})

local C = require("nvim-xresources.colors") -- makes it so you can use C.color
-- vim.api.nvim_set_hl(0, "@comment", {})
-- vim.api.nvim_set_hl(0, "@comment.documentation", {})
-- vim.api.nvim_set_hl(0, "@comment.error", {})
-- vim.api.nvim_set_hl(0, "@comment.warning", {})
-- vim.api.nvim_set_hl(0, "@comment.todo", {})
-- vim.api.nvim_set_hl(0, "@comment.note", {})

-- Constants
-- vim.api.nvim_set_hl(0, "@constant", {})
-- vim.api.nvim_set_hl(0, "@constant.builtin", {})
-- vim.api.nvim_set_hl(0, "@constant.macro", {})

-- Modules
-- vim.api.nvim_set_hl(0, "@module", {})
-- vim.api.nvim_set_hl(0, "@module.builtin", {})

-- Strings
-- vim.api.nvim_set_hl(0, "@string", {})
-- vim.api.nvim_set_hl(0, "@string.documentation", {})
-- vim.api.nvim_set_hl(0, "@string.regex", {})
-- vim.api.nvim_set_hl(0, "@string.escape", {})
-- vim.api.nvim_set_hl(0, "@string.special", {})
-- vim.api.nvim_set_hl(0, "@string.special.symbol", {})
-- vim.api.nvim_set_hl(0, "@string.special.url", {})
-- vim.api.nvim_set_hl(0, "@string.special.path", {})

-- Characters
-- vim.api.nvim_set_hl(0, "@character", {})
-- vim.api.nvim_set_hl(0, "@character.special", {})

-- Numbers
-- vim.api.nvim_set_hl(0, "@number", {})
-- vim.api.nvim_set_hl(0, "@number.float", {})

-- Booleans
-- vim.api.nvim_set_hl(0, "@boolean", {})

-- Types
-- vim.api.nvim_set_hl(0, "@type", {})
-- vim.api.nvim_set_hl(0, "@type.builtin", {})
-- vim.api.nvim_set_hl(0, "@type.definition", {})
-- vim.api.nvim_set_hl(0, "@type.qualifier", {})

-- Attributes
-- vim.api.nvim_set_hl(0, "@attribute", {})
-- vim.api.nvim_set_hl(0, "@attribute.builtin", {})
-- vim.api.nvim_set_hl(0, "@property", {})

-- Functions
-- vim.api.nvim_set_hl(0, "@function", {})
-- vim.api.nvim_set_hl(0, "@function.builtin", {})
-- vim.api.nvim_set_hl(0, "@function.call", {})
-- vim.api.nvim_set_hl(0, "@function.macro", {})
-- vim.api.nvim_set_hl(0, "@function.method", {})
-- vim.api.nvim_set_hl(0, "@function.method.call", {})
-- vim.api.nvim_set_hl(0, "@constructor", {})

-- Variables
vim.api.nvim_set_hl(0, "@variable", {
fg = C.green,        -- text color
--bg = "#000000",        -- background color
--bold = true,           -- bold text
--italic = true,         -- italic text
--underline = true,      -- underline
--undercurl = true,      -- curly underline
--strikethrough = true,  -- crossed out
--reverse = true,        -- swap fg/bg
--link = "OtherGroup",   -- inherit another group
})
-- vim.api.nvim_set_hl(0, "@variable.builtin", {})
-- vim.api.nvim_set_hl(0, "@variable.parameter", {})
-- vim.api.nvim_set_hl(0, "@variable.parameter.builtin", {})
-- vim.api.nvim_set_hl(0, "@variable.member", {})

-- Keywords
-- vim.api.nvim_set_hl(0, "@keyword", {})
-- vim.api.nvim_set_hl(0, "@keyword.coroutine", {})
-- vim.api.nvim_set_hl(0, "@keyword.function", {})
-- vim.api.nvim_set_hl(0, "@keyword.operator", {})
-- vim.api.nvim_set_hl(0, "@keyword.import", {})
-- vim.api.nvim_set_hl(0, "@keyword.type", {})
-- vim.api.nvim_set_hl(0, "@keyword.modifier", {})
-- vim.api.nvim_set_hl(0, "@keyword.repeat", {})
-- vim.api.nvim_set_hl(0, "@keyword.return", {})
-- vim.api.nvim_set_hl(0, "@keyword.debug", {})
-- vim.api.nvim_set_hl(0, "@keyword.exception", {})
-- vim.api.nvim_set_hl(0, "@keyword.conditional", {})
-- vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", {})
-- vim.api.nvim_set_hl(0, "@keyword.directive", {})
-- vim.api.nvim_set_hl(0, "@keyword.directive.define", {})

-- Operators
-- vim.api.nvim_set_hl(0, "@operator", {})

-- Punctuation
-- vim.api.nvim_set_hl(0, "@punctuation", {})
-- vim.api.nvim_set_hl(0, "@punctuation.delimiter", {})
-- vim.api.nvim_set_hl(0, "@punctuation.bracket", {})
-- vim.api.nvim_set_hl(0, "@punctuation.special", {})

-- Markup
-- vim.api.nvim_set_hl(0, "@markup", {})
-- vim.api.nvim_set_hl(0, "@markup.strong", {})
-- vim.api.nvim_set_hl(0, "@markup.italic", {})
-- vim.api.nvim_set_hl(0, "@markup.strikethrough", {})
-- vim.api.nvim_set_hl(0, "@markup.underline", {})
-- vim.api.nvim_set_hl(0, "@markup.heading", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.1", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.2", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.3", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.4", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.5", {})
-- vim.api.nvim_set_hl(0, "@markup.heading.6", {})
-- vim.api.nvim_set_hl(0, "@markup.quote", {})
-- vim.api.nvim_set_hl(0, "@markup.math", {})
-- vim.api.nvim_set_hl(0, "@markup.link", {})
-- vim.api.nvim_set_hl(0, "@markup.link.label", {})
-- vim.api.nvim_set_hl(0, "@markup.link.url", {})
-- vim.api.nvim_set_hl(0, "@markup.raw", {})
-- vim.api.nvim_set_hl(0, "@markup.raw.block", {})
-- vim.api.nvim_set_hl(0, "@markup.list", {})
-- vim.api.nvim_set_hl(0, "@markup.list.checked", {})
-- vim.api.nvim_set_hl(0, "@markup.list.unchecked", {})

-- Tags (HTML/XML)
-- vim.api.nvim_set_hl(0, "@tag", {})
-- vim.api.nvim_set_hl(0, "@tag.attribute", {})
-- vim.api.nvim_set_hl(0, "@tag.delimiter", {})

-- Diff
-- vim.api.nvim_set_hl(0, "@diff.plus", {})
-- vim.api.nvim_set_hl(0, "@diff.minus", {})
-- vim.api.nvim_set_hl(0, "@diff.delta", {})
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  end,
},
}
