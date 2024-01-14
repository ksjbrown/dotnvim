-- Enable transparency
vim.opt.pumblend = 0
return {
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"folke/noice.nvim",
		opts = {
			views = {
				mini = {
					win_options = {
						winblend = 0,
					},
				},
			},
		},
	},
	{
		"hrsh7th/nvim-cmp",
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			local cmp = require("cmp")
			local winhighlight = "Normal:None,FloatBorder:None,CursorLine:None,Search:None"
			opts.window = {
				completion = cmp.config.window.bordered({ winhighlight = winhighlight, border = "rounded" }),
				documentation = cmp.config.window.bordered({ winhighlight = winhighlight, border = "rounded" }),
				preview = cmp.config.window.bordered({ winhighlight = winhighlight, border = "rounded" }),
			}
		end,
	},
}
