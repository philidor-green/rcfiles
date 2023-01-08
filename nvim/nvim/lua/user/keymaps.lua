-- better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- disable arrows
vim.keymap.set('n', '<up>', '')
vim.keymap.set('n', '<down>', '')
vim.keymap.set('n', '<left>', '')
vim.keymap.set('n', '<right>', '')
vim.keymap.set('i', '<up>', '')
vim.keymap.set('i', '<down>', '')
vim.keymap.set('i', '<left>', '')
vim.keymap.set('i', '<right>', '')

-- save
vim.keymap.set('n', '<leader>w', '<Esc>:w<cr><Space>')

