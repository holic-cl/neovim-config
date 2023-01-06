imap('<cr>', function()
  if vim.fn['coc#pum#visible']() then
    return vim.fn['coc#pum#confirm']()
  else
    return "<CR>"
  end
end, { expr = true })
