
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local mappings = require('local.vim-tree-mappings')

-- setup with some options
require("nvim-tree").setup({
  on_attach = mappings.on_attach,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
    exclude = {".gitignore$", ".env"},
  },
})


nmap("<C-t>", ":NvimTreeFocus<CR>")
nmap("<C-f>", ":NvimTreeFindFile<CR>")
nmap("<C-h>", ":NvimTreeToggle<CR>")
nmap("<C-c>", ":NvimTreeCollapse<CR>")


