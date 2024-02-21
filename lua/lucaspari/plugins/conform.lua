return {
  'stevearc/conform.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt", "goimports", "gofumpt" }
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      }
    })
    vim.keymap.set({ "n", "v" }, "<leader>fc", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      }, { desc = "Format File" })
    end)
  end
}
