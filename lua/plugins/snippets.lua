return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local luasnip = require("luasnip")
      -- Load local Lua snippets (ensure path expands correctly)
      local snippets_path = vim.fn.stdpath("config") .. "/lua/snippets"
      require("luasnip.loaders.from_lua").load({ paths = snippets_path })

      -- Optionally load community snippets as well (lazy)
      pcall(function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end)
    end,
  },
}
