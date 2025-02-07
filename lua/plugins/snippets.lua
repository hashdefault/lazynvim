return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local luasnip = require("luasnip")
      luasnip.filetype_extend("php", { "php" })
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
    end,
  },
}
