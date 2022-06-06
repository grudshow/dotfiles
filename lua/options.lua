local opt = vim.opt
local cmd = vim.cmd

opt.backup = false 

opt.number = true
opt.clipboard = "unnamedplus" 
opt.expandtab = true 
opt.tabstop = 2 
opt.mouse = "a"
opt.shiftwidth = 2 
opt.smarttab = true 
opt.swapfile = false 
opt.writebackup = false 
opt.autowrite = true 
opt.hlsearch = true 
opt.ignorecase = true 
opt.smartindent = true 
opt.splitbelow = true 
opt.splitright = true 
opt.cursorline = true 
opt.scrolloff = 8 
opt.sidescrolloff = 8 
opt.timeoutlen = 1000
opt.updatetime = 300
opt.termguicolors = true,

cmd "set whichwrap+=<,>,[,],h,l"
cmd [[set iskeyword+=-]]
cmd [[set formatoptions-=cro]]
