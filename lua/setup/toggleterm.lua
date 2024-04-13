require("toggleterm").setup({
   size = 15,       
   open_mapping = [[<C-t>]],
   hide_numbers = true,
   start_in_insert = true,
   insert_mappings = false,
   terminal_mappings = true,
   persist_size = true,
   auto_scroll = true,
   direction = 'horizontal',
   shell = vim.o.shell,
   close_on_exit = true,
})

local function term_toggle()
   vim.cmd('ToggleTerm')
end


--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = term_toggle })
