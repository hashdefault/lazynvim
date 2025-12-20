return {
  --{
  --  "folke/tokyonight.nvim",
  --  lazy = false,
  --  priority = 1000,
  --  opts = {
  --    style = "night",
  --    styles = {
  --      comments = { italic = false },
  --      keywords = { italic = false },
  --      functions = { italic = false },
  --    },
  --  },
  --},
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_ui_contrast = "high"
      -- vim.g.everforest_transparent_background = 1
      vim.cmd.colorscheme("everforest")
    end,
  },
}
