--[[vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


local function open_nvim_tree(data)

   -- buffer is a real file on the disk
   local real_file = vim.fn.filereadable(data.file) == 1

   -- buffer is a [No Name]
   local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

   -- buffer is a directory
   local directory = vim.fn.isdirectory(data.file) == 1

   if not real_file and not no_name and not directory then
      return
   end

   if real_file then
      -- open the tree, find the file but don't focus it
      require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
   end   

   if directory then
      --change to the directory
      vim.cmd.cd(data.file)

      -- open the tree
      require("nvim-tree.api").tree.open()
   end
      
   
end -]]--
