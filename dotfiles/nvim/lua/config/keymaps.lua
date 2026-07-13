-- Shared Clipboard
vim.opt.clipboard = "unnamedplus"

-- Deleting with x doesn't affect the clipboard
vim.keymap.set("n", "x", '"_x', { desc = "Delete without yanking" })

vim.keymap.del("n", "<leader>l")
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>lx", "<cmd>LazyExtras<cr>", { desc = "Lazy Extras" })

-- Pi Agent
vim.keymap.set("n", "<leader>ai", ":PiAsk<CR>", { desc = "Ask pi" })
vim.keymap.set("v", "<leader>ai", ":PiAskSelection<CR>", { desc = "Ask pi (selection)" })

vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
