require('nvim-treesitter.configs').setup {
  ensure_installed = { 'http', 'json', 'toml', 'dockerfile', 'help', 'vim', 'go', 'lua', 'rust', 'sql', 'javascript', 'typescript' },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
