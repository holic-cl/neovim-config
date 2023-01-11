vim.g:coc_global_extensions = [
  'coc-json',
  'coc-git',
  'coc-cssmodules',
  'coc-html',
  'coc-sql',
  'coc-tsserver',
  'coc-markdownlist',
  'coc-json',
  'coc-docker',
  'coc-css',
  'coc-vetur',
  'coc-sh',
  'coc-pyright',
  'coc-phpls',
  'coc-phpactor',
  'coc-java',
  '@yaegassy/coc-volar',
  '@yaegassy/coc-volar.tools',
]

imap('<cr>', function()
  if vim.fn['coc#pum#visible']() then
    return vim.fn['coc#pum#confirm']()
  else
    return "<CR>"
  end
end, { expr = true })

vim.cmd "autocmd FileType scss setl iskeyword+=@-@"
