lua require('init')
"set number
"set relativenumber
"set mouse=a
"syntax enable
"set showcmd
"set encoding=utf-8
"set showmatch
"set autoindent
"set smartindent
"set expandtab
"set tabstop=2
"set shiftwidth=2
"set smarttab
"set softtabstop=2

"" LEADER key
"let mapleader=","

""
"" Basic keymapings
""
"" Ctrl+z to undo
"nnoremap <C-Z> u
"inoremap <C-Z> <C-O>u
"" Save file
"nnoremap <C-S> :update<cr>
"inoremap <C-S> <Esc>:update<cr>gi

"
" Plugings "
"
"call plug#begin()

""" Declare the list of plugins.
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

""" Theme
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'itchyny/lightline.vim'

""" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'natebosch/vim-lsc'

""" Completition
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'

""" For vsnip users.
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'

""" File explorer and tabs
"Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
"Plug 'nvim-tree/nvim-tree.lua'
"Plug 'romgrk/barbar.nvim'

""" Nerdcommenter
"Plug 'preservim/nerdcommenter'

""" blackline
"Plug 'lukas-reineke/indent-blankline.nvim'

""" Coc
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

""" Tagbar
"Plug 'preservim/tagbar'

""" Vim multiline cursors
"Plug 'terryma/vim-multiple-cursors'

""" Terminal
"Plug 'tc50cal/vim-terminal'

"Plug 'tpope/vim-surround'
"Plug 'alvan/vim-closetag'
"Plug 'glepnir/dashboard-nvim'

"Plug 'rcarriga/nvim-notify'
"Plug 'tpope/vim-eunuch'
"call plug#end()
"

" COC "
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : '\<CR>'

"
" Theme 
"
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
"if (has('nvim'))
  "let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
"endif

"" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
"" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
"" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
"if (has('termguicolors'))
  "set termguicolors
"endif

"let g:material_theme_style = 'default'
"let g:material_terminal_italics = 1
"colorscheme material


"
" LSP Servers
"
"lua << EOF
"require'lspconfig'.pyright.setup{}
"require'lspconfig'.yamlls.setup{}
"require'lspconfig'.vuels.setup{}
"require'lspconfig'.tsserver.setup{}
"require'lspconfig'.tailwindcss.setup{}
"require'lspconfig'.html.setup{}
"require'lspconfig'.phpactor.setup{}
"require'lspconfig'.java_language_server.setup{}
"require'lspconfig'.sqls.setup{}
"EOF
"let g:lsc_server_commands = {'java': '/home/holic/app/java-language-server/dist/lang_server_linux.sh'}


"
" COMPLETITION CONFIG
"
"set completeopt=menu,menuone,noselect

"lua <<EOF
  "-- Set up nvim-cmp.
  "local cmp = require'cmp'

  "cmp.setup({
    "snippet = {
      "-- REQUIRED - you must specify a snippet engine
      "expand = function(args)
        "vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        "-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        "-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        "-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      "end,
    "},
    "window = {
      "-- completion = cmp.config.window.bordered(),
      "-- documentation = cmp.config.window.bordered(),
    "},
    "mapping = cmp.mapping.preset.insert({
      "['<C-b>'] = cmp.mapping.scroll_docs(-4),
      "['<C-f>'] = cmp.mapping.scroll_docs(4),
      "['<C-Space>'] = cmp.mapping.complete(),
      "['<C-e>'] = cmp.mapping.abort(),
      "['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    "}),
    "sources = cmp.config.sources({
      "{ name = 'nvim_lsp' },
      "{ name = 'vsnip' }, -- For vsnip users.
      "-- { name = 'luasnip' }, -- For luasnip users.
      "-- { name = 'ultisnips' }, -- For ultisnips users.
      "-- { name = 'snippy' }, -- For snippy users.
    "}, {
      "{ name = 'buffer' },
    "})
  "})

  "-- Set configuration for specific filetype.
  "cmp.setup.filetype('gitcommit', {
    "sources = cmp.config.sources({
      "{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    "}, {
      "{ name = 'buffer' },
    "})
  "})

  "-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  "cmp.setup.cmdline({ '/', '?' }, {
    "mapping = cmp.mapping.preset.cmdline(),
    "sources = {
      "{ name = 'buffer' }
    "}
  "})

  "-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  "cmp.setup.cmdline(':', {
    "mapping = cmp.mapping.preset.cmdline(),
    "sources = cmp.config.sources({
      "{ name = 'path' }
    "}, {
      "{ name = 'cmdline' }
    "})
  "})

  "-- Set up lspconfig.
  "local capabilities = require('cmp_nvim_lsp').default_capabilities()
  "-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  "require('lspconfig')['vuels'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['pyright'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['tsserver'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['yamlls'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['tailwindcss'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['java_language_server'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['phpactor'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['html'].setup {
    "capabilities = capabilities
  "}
  "require('lspconfig')['sqls'].setup {
    "capabilities = capabilities
  "}
"EOF

"
" nerdcommenter "
"
"filetype plugin on

"
" blackline "
"
"lua << EOF
"require("indent_blankline").setup {
    "-- for example, context is off by default, use this to turn it on
    "show_current_context = true,
    "show_current_context_start = true,
"}
"EOF


"
" File explorer "
"
"lua << EOF
"-- disable netrw at the very start of your init.lua (strongly advised)
"vim.g.loaded_netrw = 1
"vim.g.loaded_netrwPlugin = 1

"-- set termguicolors to enable highlight groups
"vim.opt.termguicolors = true

"-- setup with some options
"require("nvim-tree").setup({
  "sort_by = "case_sensitive",
  "view = {
    "adaptive_size = true,
    "mappings = {
      "list = {
        "{ key = "u", action = "dir_up" },
      "},
    "},
  "},
  "renderer = {
    "group_empty = true,
  "},
  "filters = {
    "dotfiles = true,
  "},
"})
"EOF

" Keymaps "
"nnoremap <C-t> :NvimTreeFocus<CR>
"nnoremap <C-f> :NvimTreeFindFile<CR>
"nnoremap <C-h> :NvimTreeToggle<CR>
"nnoremap <C-c> :NvimTreeCollapse<CR>


"
" Telescope "
"
"lua << EOF
"-- You dont need to set any of these options. These are the default ones. Only
"-- the loading is important
"require('telescope').setup {
  "extensions = {
    "fzf = {
      "fuzzy = true,                    -- false will only do exact matching
      "override_generic_sorter = true,  -- override the generic sorter
      "override_file_sorter = true,     -- override the file sorter
      "case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       "-- the default case_mode is "smart_case"
    "}
  "}
"}
"-- To get fzf loaded and working with telescope, you need to call
"-- load_extension, somewhere after setup function:
"require('telescope').load_extension('fzf')
"EOF

" Keymaps "
" Find files using Telescope command-line sugar. "
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>



"
" Tagbar "
"
"nmap <F8> :TagbarToggle<CR>


"
" Terminal "
"
" Keymaps "
"nnoremap <leader>ht <cmd>TerminalSplit bash<cr>
"nnoremap <leader>vt <cmd>TerminalVSplit bash<cr>
"nnoremap <leader>tt <cmd>TerminalTab bash<cr>


"
" Tabs "
"
" Keymaps "
" Move to previous/next "
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next "
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position... "
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer "
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer "
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Wipeout buffer "
" Magic buffer-picking mode "
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by... "
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>
