return {
  {
    "vimwiki/vimwiki",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.vimwiki_list = { {
        path = "~/Nextcloud/notes/",
        syntax = "markdown",
        ext = "md",
      } }
    end,
  },
}
