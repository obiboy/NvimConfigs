require("barbar").setup({
   animation = true,
   auto_hide = false,
   tabpages = true,
   closable = true,
   clickable = true,
   insert_at_end = true,
   sidebar_filetypes = {
      NvimTree = true,
   },

   --separator = {left = ' ▎', right = ''},
   maximum_padding = 1,
   minimum_padding = 0,
})
