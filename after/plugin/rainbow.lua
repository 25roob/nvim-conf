local rainbow_delimiters = require 'rainbow-delimiters'

require('rainbow-delimiters.setup').setup {
	strategy = {
		[''] = rainbow_delimiters.strategy['global'],
		vim = rainbow_delimiters.strategy['global'],
	},
	query = {
		[''] = 'rainbow-delimiters',
		lua = 'rainbow-blocks',
	},
	priority = {
		[''] = 110,
		lua = 210,
	},
	highlight = {
		'RainbowDelimiterGreen',
		'RainbowDelimiterRed',
		'RainbowDelimiterCyan',
		'RainbowDelimiterViolet',
		'RainbowDelimiterYellow',
		'RainbowDelimiterBlue',
		'RainbowDelimiterOrange',
	},
}


