-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { silent = true, noremap = true }

local keymap = vim.keymap

-- Neotree
keymap.set("n", "<C-t>", ":Neotree toggle<cr>", { noremap = true, silent = true })

-- lsp diagnostics
keymap.set("n", "<space>e", ":lua vim.diagnostic.open_float()<cr>", opts)
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
keymap.set("n", "<C-k>", function()
  vim.diagnostic.goto_prev()
end, opts)

keymap.set("n", "<leader>ll", function()
  require("config.functions").generateGettersAndSetters()
end, opts)

-- delete word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- new file
keymap.set("n", "<leader>n", ":enew<cr>", { noremap = true, silent = true })
