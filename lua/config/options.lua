-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.mapleader = " "
vim.g.autoformat = false
vim.g.loaded_cmp = 1 -- Disable nvim-cmp in favor of blink.cmp

-- Disable animations/dashboard as per user config
vim.g.snacks_animate = false
vim.g.minianimate_disable = true
vim.g.dashboard = false

vim.opt.relativenumber = false -- LazyVim enables this by default, disabling per user preference

vim.opt.scrolloff = 10 -- LazyVim default is 4
vim.opt.mouse = "" -- Disable mouse

vim.opt.laststatus = 2 -- LazyVim default is 3 (global statusline)

-- Other user preferences
vim.opt.title = true
vim.opt.cmdheight = 1
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.background = "dark"
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.textwidth = 150
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })

-- Spellcheck for markdown
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.md",
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "pt_br", "en" }
  end,
})

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })