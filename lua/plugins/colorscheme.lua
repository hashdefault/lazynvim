return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    name = "nordic",
    config = function()
      require("nordic").setup({
        transparent_bg = true,
      })
    end,
  },
}
