function map(mode, shortcut, command, options)
  local options = options or { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end
