local on_attach = require('lsp.on_attach')
local lspconfig = require('lspconfig')

lspconfig.tailwindcss.setup({
  filetypes = {
    'djangohtml',
    'handlebars',
    'hbs',
    'html',
    'heex',
    'markdown',
    'mdx',
    'elixir',
    'css',
    'scss',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
  init_options = {
    userLanguages = {
      ['phoenix-heex'] = 'html-eex',
      elixir = 'html-eex',
      heex = 'html-eex',
      eelixir = 'html-eex',
      eruby = 'erb',
    },
  },
  settings = {
    tailwindCSS = {
      lint = {
        cssConflict = 'ignore',
      },
      -- experimental = {
      --   classRegex = {
      --     '[a-zA-Z]+ClassName=\\"([^\\"]*)\\"',
      --     'className[a-zA-Z]+=\\"([^\\"]*)\\"',
      --     '[`\'"`]([^\'"`,;]*)[`\'"`]',
      --     '`([^`]*)`',
      --     'twMerge\\(([\\S\\s]*?)\\)',
      --     '(?:twMerge|twJoin)\\(([^\\);]*)[\\);]',
      --   },
      -- },
    },
  },
})
