-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Local Variable

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remap the escape as jk

keymap.set("i", "jk", "<ESC>", opts)

-- New Tab

keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split Window

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move Window

keymap.set("n", "sh", "<C-W>h", opts)
keymap.set("n", "sj", "<C-W>j", opts)
keymap.set("n", "sk", "<C-W>k", opts)
keymap.set("n", "sl", "<C-W>l", opts)

-- Move Quickly

keymap.set("n", "J", "10j", opts)
keymap.set("n", "K", "10k", opts)

-- Buffer

keymap.set("n", "<leader>bl", ":BufferLineCloseRight<Return>", opts)
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<Return>", opts)
