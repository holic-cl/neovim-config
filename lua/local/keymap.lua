-- Undo
nmap('<C-Z>', 'u')
imap('<C-Z>', '<C-O>u')

-- Save file
nmap('<C-S>', ':update<cr>')
imap('<C-S>', '<Esc>:update<cr>gi')

nmap('<leader>p', '"+p')
vmap('<leader>p', '"+p')
nmap('<leader>P', '"+P')
vmap('<leader>P', '"+P')
nmap('<leader>y', '"+y')
vmap('<leader>y', '"+y')
nmap('<leader>Y', '"+y$')
