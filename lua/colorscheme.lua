vim.cmd [[
try
  colorscheme palenightfall
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
