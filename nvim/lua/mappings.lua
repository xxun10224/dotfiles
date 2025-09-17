require "nvchad.mappings"

-- add yours here

local nomap = vim.keymap.del
local map = vim.keymap.set


-- tabufline navigation
-- backslash for next tabufline
nomap("n", "<tab>")
map("n", "\\", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

-- vertical bar for prev tabufline
nomap("n", "<S-tab>")
map("n", "|", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle Background Transparency" })

-- telescope
map("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope lists lsp references" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "telescope lists lsp symbols in current buffer" })
map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<CR>", { desc = "telescope lists lsp implementations" })

-- fzf-lua
-- map("n", "<leader>lr", ":lua require('fzf-lua').lsp_references()<CR>", { desc = "fzf-lua lists lsp references" })
-- map("n", "<C-\\>", ":lua require('fzf-lua').buffers()<CR>", { desc = "fzf-lua lists opened buffers" })
