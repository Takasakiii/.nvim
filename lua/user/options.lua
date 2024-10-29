local o = vim.opt

o.backup = false
-- o.clipboard = "unnamedplus" -- not working
o.cmdheight = 2
o.completeopt = { "menuone", "noselect" }
o.conceallevel = 0
o.fileencoding = "utf-8"
o.hlsearch = true
o.ignorecase = true
o.mouse = ""
o.pumheight = 10
o.showmode = true
o.showtabline = 2
o.smartcase = true
o.smartindent = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.termguicolors = true
o.timeoutlen = 1500
o.undofile = true
o.updatetime = 300
o.writebackup = false
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.cursorline = true
o.number = true
o.relativenumber = false
o.numberwidth = 4
o.signcolumn = "yes"
o.wrap = true
o.scrolloff = 8
o.sidescrolloff = 8

o.shortmess:append "c"

vim.cmd [[set formatoptions-=cro]]
