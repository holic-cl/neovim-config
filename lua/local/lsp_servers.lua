require'lspconfig'.pyright.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.phpactor.setup{}
require'lspconfig'.java_language_server.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.terraformls.setup{}

vim.g.lsc_server_commands = {
  java = '/home/holic/app/java-language-server/dist/lang_server_linux.sh',
  sql = 'sql-language-server up --method stdio'
}
