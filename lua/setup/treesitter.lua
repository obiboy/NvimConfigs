require("nvim-treesitter.configs").setup({
   ensure_installed = {
      'c',
      'c_sharp',
      'cpp',
      'css',
      'go',
      'html',
      'java',
      'javascript',
      'kotlin',
      'lua',
      'matlab',
      'perl',
      'php',
      'python',
      'ruby',
      'rust',
      'scala',
      'scheme',
      'sql',
      'typescript',
      'vim',
   },
   sync_install = false,
   auto_install = true,

   highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
   },

   indent = {
      enable = true,
   },
})

