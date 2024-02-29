return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofumpt" },
				json = { "prettier" },
			},
		})
		vim.keymap.set("", "<leader>fc", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "[F]ormat" })
	end,
}
