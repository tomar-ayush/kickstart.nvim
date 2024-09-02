-- lua/custom/plugins/keymaps.lua

-- Exit insert mode with 'jk'
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

--vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
-- vim.keymap.set('n', '<leader>th', ':Telescope colorscheme<CR>')
--vim.keymap.set('n', '<leader>of', ':Telescope old_files<CR>')
--vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>')

-- Exit insert mode and move left, down, up, or right
vim.keymap.set('i', '<C-;>', '<ESC>la', { desc = 'Exit insert mode and move right' })
vim.keymap.set('i', '<C-k>', '<ESC>ka', { desc = 'Exit insert mode and move up' })
vim.keymap.set('i', '<C-j>', '<ESC>ja', { desc = 'Exit insert mode and move down' })
vim.keymap.set('i', '<C-p>', '<ESC>ha', { desc = 'Exit insert mode and move left' })

-- Map Ctrl + A in insert mode to move to the end of the line and enter insert mode
vim.keymap.set('i', '<C-a>', '<Esc>$a', { noremap = true, silent = true })
-- Keymaps to run a Program
vim.keymap.set('n', '<leader>rn', function()
  local file_name = vim.api.nvim_buf_get_name(0)
  local file_type = vim.bo.filetype

  if file_type == 'lua' then
    vim.cmd(':tabnew | terminal lua ' .. file_name)
  elseif file_type == 'java' then
    local class_name = vim.fn.fnamemodify(file_name, ':t:r')
    vim.cmd(':tabnew | terminal bash -c "javac ' .. file_name .. ' && java ' .. class_name .. '"')
  end
end)

return {}
