local present, indentBlankline = pcall(require, 'indent_blankline')
if not present then return end

indentBlankline.setup({
  -- char = '│',
  char = '▏',
  show_first_indent_level = false,
  filetype_exclude = { 'help', 'packer' },
  buftype_exclude = { 'terminal', 'WhichKey', 'dashboard', 'help', 'packer' },
  show_current_context = true,
  show_trailing_blankline_indent = false,
})

