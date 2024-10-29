local opts = { noremap = true }
local term_opts = {}

local k = vim.api.nvim_set_keymap

--define leader
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal Mode --
-- Lex
k("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize Window
k("n", "<C-Up>", ":resize +2<cr>", opts)
k("n", "<C-Down>", ":resize -2<cr>", opts)
k("n", "<C-Left>", ":vertical resize -2<cr>", opts)
k("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Navigate buffers
k("n", "L", ":bnext<cr>", opts)
k("n", "H", ":bprevious<cr>", opts)

-- Navigate tabs
k("n", "<C-n>", ":tabnew<cr>", opts)
k("n", "<C-l>", "gt", opts)
k("n", "<C-h>", "gT", opts)

-- Navigate window
k("n", "<A-L>", ":vsplit<cr>", opts)
k("n", "<A-J>", ":split<cr>", opts)
k("n", "<A-h>", "<C-w>h", opts)
k("n", "<A-j>", "<C-w>j", opts)
k("n", "<A-k>", "<C-w>k", opts)
k("n", "<A-l>", "<C-w>l", opts)

-- Other
k("n", "<C-t>", ":tab terminal<cr>i", opts)
k("n", "<C-q>", ":q<cr>", opts)

-- Visial Mode --
-- Move text up and down
k("v", "K", ":move '<-2<CR>gv-gv", opts)
k("v", "J", ":move '>+1<CR>gv-gv", opts)

-- Indent
k("v", "<S-Tab>", "<gv", opts)
k("v", "<Tab>", ">gv", opts)


-- Visual Block --


-- Terminal --
-- Navigation
k("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
k("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
k("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
k("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Other
k("t", "<C-d>", "<C-\\><C-n>", term_opts) 
