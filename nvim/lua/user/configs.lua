require('configs.cmp')
require('configs.lsp')
require("nnn").setup()
require('nvim-web-devicons').setup({ default = true; })
require('github-theme').setup({
    theme_style = "light"
})
require('configs.lualine')
require('configs.treesitter')
require('configs.telescope')
require('Comment').setup()
require("nvim-autopairs").setup()
require('go').setup()
require('configs.rust')
require('gitsigns').setup()
require"fidget".setup{}
