return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "eslint" },
      svelte = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "marksman" },
      graphql = { "prettier" },
      lua = { "stylua" },
      python = { "isort", "black" },
      php = { "intelephense" },
      sh = { "shfmt" },
    },
    format = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000,
    },
  },
  keys = {
    {
      "<leader>fm",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format file or range",
    },
  },
}