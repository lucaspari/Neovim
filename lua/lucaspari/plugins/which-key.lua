return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		wk.register({
			f = {
				name = "+find", -- Group name for finding things
				f = "Find Files",
				t = "Live Grep",
				g = "Git Files",
				b = "Buffers",
				h = "Help Tags",
			},
			g = {
				name = "+git",
				g = "lazygit",
			},
			s = {
				name = "+split",
				p = "split vertical",
				h = "split horizontal",
			},
		}, { prefix = "<leader>" })
	end,
}
