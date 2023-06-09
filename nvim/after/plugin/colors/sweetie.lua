--- Default configuration
require("sweetie").setup({
    -- Pop-up menu pseudo-transparency
    pumblend = {
        enable = true,
        transparency_amount = 100,
    },
    -- Override default sweetie color palettes
    -- Palette fields:
    --  bg
    --  fg
    --  bg_hl
    --  bg_alt
    --  fg_alt
    --  grey
    --  dark_grey
    --  red
    --  orange
    --  green
    --  teal
    --  yellow
    --  blue
    --  magenta
    --  violet
    --  cyan
    palette = {
        dark = {},
        light = {},
    },
    -- Override default highlighting groups options
    overrides = {},
    -- Custom plugins highlighting groups
    -- Enable custom cursor coloring even in terminal Neovim sessions
    cursor_color = false,
    -- Use sweetie's palette in `:terminal` instead of your default terminal colorscheme
    -- terminal_colors = true,
})
