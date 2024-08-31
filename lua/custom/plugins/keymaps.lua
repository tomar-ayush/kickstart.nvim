-- lua/custom/plugins/keymaps.lua

-- Exit insert mode with 'jk'
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- Move to the next character in insert mode
-- vim.keymap.set('i', '<C-l>', '<ESC>la', { noremap = true, silent = true })
-- vim.keymap.set('i', '<C-k>', '<ESC>ka', { noremap = true, silent = true })
-- vim.keymap.set('i', '<C-j>', '<ESC>ja', { noremap = true, silent = true })
-- vim.keymap.set('i', '<C-h>', '<ESC>ha', { noremap = true, silent = true })

-- Map Ctrl + A in insert mode to move to the end of the line and enter insert mode
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>$a', { noremap = true, silent = true })

return {}
