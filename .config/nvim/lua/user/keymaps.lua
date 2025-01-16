local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Modes
-- n - normal
-- i - insert
-- v - visual
-- x - visual block
-- t - terminal
-- c - command

-- Remap Space as Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " " -- idk what this is but ima do it

-- Center on screen scrolls
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "G", "Gzz")

-- Fast exit insert mode
keymap("i", "kj", "<ESC>", opts)

-- Fast quit and write
opts.desc = "Quit"
keymap({"n", "v"}, "<leader>q", "<cmd>q<CR>", opts)
opts.desc = "Write"
keymap({"n", "v"}, "<leader>w", "<cmd>w<CR>", opts)

-- Clear search highlights
opts.desc = "Clear search highlights"
keymap("n", "<leader>n", ":nohl<CR>", opts)

-- Window Management
opts.desc = "Split window vertically"
keymap({"n", "v"}, "<leader>sd", "<C-w>v", opts)
opts.desc = "Split window horizontally"
keymap({"n", "v"}, "<leader>sf", "<C-w>s", opts)
opts.desc = "Equalize splits"
keymap({"n", "v"}, "<leader>sr", "<C-w>=", opts)
opts.desc = "Close Window"
keymap({"n", "v"}, "<leader>sx", "<cmd>close<CR>", opts)

-- Window Resizing
opts.desc = "Shrink window horizontally"
keymap({"n", "v"}, "<leader>sh", "<cmd>vertical resize -4<CR>", opts)
opts.desc = "Grow window horizontally"
keymap({"n", "v"}, "<leader>sl", "<cmd>vertical resize +4<CR>", opts)
opts.desc = "Grow window vertically"
keymap({"n", "v"}, "<leader>sk", "<cmd> resize +4<CR>", opts)
opts.desc = "Shrink window vertically"
keymap({"n", "v"}, "<leader>sj", "<cmd> resize -4<CR>", opts)

-- Tab Management
opts.desc = "Open new tab"
keymap("n", "<leader>tt", "<cmd>tabnew<CR>", opts)
opts.desc = "Close tab"
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", opts)
opts.desc = "Previous Tab"
keymap("n", "<leader>th", "<cmd>tabp<CR>", opts)
opts.desc = "Next Tab"
keymap("n", "<leader>tl", "<cmd>tabn<CR>", opts)
opts.desc = "Open buffer in new tab"
keymap("n", "<leader>te", "<cmd>tabnew %<CR>", opts)

-- Buffer Management
opts.desc = "Previous Buffer"
keymap("n", "<leader>bh", "<cmd>bprevious<CR>", opts)
opts.desc = "Next Buffer"
keymap("n", "<leader>bl", "<cmd>bnext<CR>", opts)

