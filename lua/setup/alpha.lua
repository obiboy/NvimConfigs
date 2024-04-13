local dashboard = require("alpha.themes.dashboard")

local function footer()
   local quote ="\n \nThe computing scientist's main challenge is not to\nget confused by the complexities of his own making.\n \n            - Edsger W. Dijkstra"  
   return quote 
end

dashboard.section.header.val = {
   "                                                     ",
   "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
   "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
   "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
   "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
   "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
   "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
   "                                                     ",	
}

-- Set menu
dashboard.section.buttons.val = {
   dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
   dashboard.button( "f", "  > Find file", ":cd $HOME | Telescope find_files<CR>"),
  -- dashboard.button( "t", "󰉋  > Projects" , ":Telescope | NvimTreeToggle<CR>"), 
   dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
   dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
   dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.h1 = "Constant"  

require("alpha").setup(dashboard.opts)

