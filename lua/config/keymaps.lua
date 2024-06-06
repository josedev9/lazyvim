-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")
vim.keymap.del("n", "<Space>ft")
vim.keymap.del("n", "<Space>fT")
vim.keymap.del({ "n", "v" }, "<Space>cf")
vim.keymap.del({ "n", "v" }, "<Space>cF")
local map = LazyVim.safe_keymap_set
local lazyterm = function()
    LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<C-\\>", lazyterm, { desc = "Open terminal" })
map("t", "<C-\\>", "<cmd>close<cr>", { desc = "Close terminal" })
-- formatting
map({ "n", "v" }, "<Space>lf", function()
    LazyVim.format({ force = true })
end, { desc = "Format" })
