local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--Leader key
map("",",","<Nop>", default_opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- //INSERT MODE// --

-- Смена esc
map("i", "jj", "<ESC>", {})
-- Navigate
map("i", "<C-h>", "<Left>", default_opts)

-- //NORMAL MODE// --
--
-- Сохранение 
map("n", "<C-s>", "<CR>:w<CR>", default_opts)

-- Выход 
map("n", "<C-w>", "<CR>:wq<CR>", default_opts)

-- source % 
map("n", "<leader>so", "<CR>:so %<CR>", default_opts)

-- Window Navigate
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)

--Resize with arrow
map("n", "<C-Up>", ":resize -2<CR>", default_opts)
map("n", "<C-Down>", ":resize +2<CR>", default_opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)

--Tab switch buffer
map("n", "<S-l>", ":BufferLineCycleNext<CR>", default_opts)
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", default_opts)

--Hide highlight search
map("n", "<leader><space>", ":noh<CR>", default_opts)


-- //VISUAL MODE// --
--
--Move current line / block
map("x", "K", ":move '<-2<CR>gv-gv", default_opts)
map("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- //TERMINAL MODE// --
--
--Terminal window navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)

-- Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", default_opts)
map("n", "<c-t>", "<cmd>Telescope live_grep<cr>", default_opts)

map("n", "<leader>e", ":NvimTreeToggle<cr>", default_opts)
