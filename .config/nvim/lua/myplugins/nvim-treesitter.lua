require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "markdown" },
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "go",
		"rust",
		"python",
    "json",
    "yaml",
    "html",
    "css",
    "scss",
    "javascript",
		"typescript",
    "bash",
    "sql",
    "lua",
    "vim",
    "markdown",
    "markdown_inline",
    "gitignore",
    "dockerfile",
    "dot",
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
