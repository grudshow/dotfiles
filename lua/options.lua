local cmd = vim.cmd

local options = {
  backup = false,
  number = true,
  clipboard = "unnamedplus",
  expandtab = true,
  tabstop = 2,
  mouse = "a",
  shiftwidth = 2,
  smarttab = true,
  swapfile = false,
  writebackup = false,
  autowrite = true,
  hlsearch = true,
  ignorecase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  cursorline = true,
  scrolloff = 8,
  sidescrolloff = 8,
  timeoutlen = 1000,
  updatetime = 300,
  termguicolors = true,

  -- Ignore some folders and files with find
  wildignore = {
    '**/node_modules/**',
    '**/.idea/**',
    '**/.git/**',
  }
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

cmd [[set laststatus=0]]
cmd [[set noshowcmd]]
cmd [[set noshowmode]]
cmd [[set noruler]]

cmd "set whichwrap+=<,>,[,],h,l"
cmd [[set iskeyword+=-]]
cmd [[set formatoptions-=cro]]
