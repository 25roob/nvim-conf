require("catppuccin").setup({
    flavour = "auto", -- auto latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "bold", },
        keywords = {},
        strings = { "italic" },
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "underline" },
        operators = { "bold" },
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
	all = {
            -- text = "#ffffff",
			rosewater = '#f66151',
			flamingo = '#c061cb',
			pink = '#c061cb',
			mauve = '#c061cb',
			red = '#eb5d70',
			maroon = '#f66151',
			peach = '#ffa348',
			yellow = '#F5C211',
			green = '#33d17a',
			green0 = '#33d1a2',
			teal = '#54DBF6',
			sky = '#62a0ea',
			sapphire = '#62a0ea',
			blue = '#62a0ea',
			lavender = '#b670d0', -- teal
			text = '#ffffff',
			subtext1 = '#deddda',
			subtext0 = '#c0bfbc',
			overlay2 = '#858585',
			overlay1 = '#737373',
			overlay0 = '#616161',
			surface2 = '#4f4f4f',
			surface1 = '#3e3e3e',
			surface0 = '#2e2e2e',
			base = '#1E1E1E',
			mantle = '#1A1A1A',
			crust = '#101010'
        },
        latte = {
            base = "#ff0000",
            mantle = "#242424",
            crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    },
    custom_highlights = function(colors)
        return {
            -- -- Comment = { fg = colors.flamingo },
            -- TabLineSel = { bg = colors.pink },
            -- CmpBorder = { fg = colors.surface2 },
            -- Pmenu = { bg = colors.none },
            LineNr = {fg = colors.subtext0},
			CursorLineNr = {fg = colors.overlay2},
			CursorLine = {bg = '#252525'},
			ColorColumn = {bg = '#252525'},
			Visual = {bg = colors.surface1},
			MsgArea = {fg = colors.subtext0},
			TabLine = {bg = colors.mantle},
			TabLineFill = {bg = colors.mantle},
			TabLineSel = {fg = colors.subtext0, bg = colors.base},

			GitSignsAdd = {fg = '#467555'},
			GitSignsChange = {fg = '#856f3a'},
			GitSignsDelete = {fg = '#753b34'},
			TelescopeBorder = {fg = colors.subtext0},

			Constant = {fg = colors.blue},
			String = {fg = colors.green0},
			Character = {fg = colors.subtext0},
			Number = {fg = colors.blue},
			Boolean = {fg = colors.blue},
			Float = {fg = colors.blue},
			Identifier = {fg = colors.teal},
			Function = {fg = colors.green},
			Statement = {fg = colors.green},
			Conditional = {fg = colors.green},
			Repeat = {fg = colors.green},
			Label = {fg = colors.green},
			Operator = {fg = colors.subtext0},
			Keyword = {fg = colors.teal},
			Exception = {fg = colors.green},
			PreProc = {fg = colors.yellow},
			Include = {fg = colors.yellow},
			Define = {fg = colors.red},
			Macro = {fg = colors.yellow},
			PreCondit = {fg = colors.yellow},
			Type = {fg = colors.blue},
			StorageClass = {fg = colors.overlay2},
			Structure = {fg = colors.subtext0},
			Special = {fg = colors.overlay2},
            SpecialChar = {fg = colors.overlay2},

            -- modifying Treesitter highlight groups
            ["@keyword"] = { fg = colors.lavender }, -- Change the color of keywords highlights
            ["@constant.macro"] = { fg = colors.rosewater, bold = true }, -- Change the color of macro constant highlights
            ["@function.macro"] = { fg = colors.rosewater, bold = true }, -- Change the color of macro constant highlights
            ["@operator"] = { bold = true }, -- and attempt for thicker params
            ["@punctuation.special"] = { fg = colors.rosewater, bold = true }, -- for the symbol "#" in clojure
            ["@parameter"] = { fg = colors.rosewater, bold = true }, -- Thicker parameters
            ["@punctuation.bracket"] = { bold = true }, -- thicker brackets
        }
    end,
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
    harpoon = true,
    rainbow_delimiters = true
})

vim.cmd.colorscheme "catppuccin"
