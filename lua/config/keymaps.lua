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
-- formatting
map({ "n", "v" }, "<Space>lf", function()
    LazyVim.format({ force = true })
end, { desc = "Format" })

vim.opt.colorcolumn = "80"
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3a3a3a" })
    end,
})
