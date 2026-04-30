return {
		'romgrk/barbar.nvim',
		lazy = false,
		dependencies = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
				animation = false,
				auto_hide = false,
				show_icon = false,
				tappages = true,
				insert_at_end = true,
				maximum_length = 10,
				minimum_length = 0,
				highlight_visible = false,

				icons = {
					separator = { left = '[' , right = ']' },
					separator_at_end = true,
					preset = 'slanted',
					current = { button = '*'  },
					visible = {modified = { button = 	'W'} },
					modified = {button = 'W' },
					diagnostics = {
						[vim.diagnostic.severity.ERROR] = {enabled = false},
						[vim.diagnostic.severity.WARN] = {enabled = false},
						[vim.diagnostic.severity.INFO] = {enabled = false},
						[vim.diagnostic.severity.HINT] = {enabled = false},
					},
					filetype = {
						enabled = true,
						custom_colors = false,
					},
					gitsigns = {
						added = { enabled = true, icon = '+'},
						changed = { enabled = true, icon = '~'},
						deleted = {enabled = true, icon ='-'}
					}
				},
		},
		version='^1.9.1',
}
