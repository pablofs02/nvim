local op = vim.opt

op.tw=0
op.listchars="tab:> ,trail:-,nbsp:+"
op.commentstring="# %s"
--op.fileformat = 'unix'
op.tabstop = 4
op.softtabstop = 4
op.shiftwidth = 4
op.expandtab = false
op.autoindent = true
op.smartindent = true
op.showmatch = true
op.showcmd = true
op.encoding = 'utf-8'
--op.fileencoding = 'utf-8'
op.number = true
op.relativenumber = true
op.mouse = ''
op.mousehide = true
op.hlsearch = false
op.incsearch = true
op.ignorecase = true
op.smartcase = true
op.clipboard = 'unnamedplus'
op.wildmenu = true
op.path = '**,/home/pablo/.archivos/Funciones/**,/home/pablo/.archivos/Notas'
op.linebreak = true
op.list = true
op.showmode = false
--op.cursorline = true
--op.cursorcolumn = true
op.endofline = false
op.foldmethod = 'syntax'
op.foldenable = false
op.swapfile = false
op.backup = false
op.undofile = true
op.updatetime = 50
--op.colorcolumn = 50
op.scrolloff = 0
op.sidescrolloff = 0
-- op.signcolumn = 'yes'
-- xxx op.isfname:append("@-@")
op.breakindent = true
-- " Ensures word-wrap does not split words
op.formatoptions = 'l'

-- " requires +linebreak compile-time option (not in the 'tiny' and 'small' builds); check your :version
op.showbreak = '--->' --  " prefix for soft-wrapped lines (no actual line break character)
-- "set linebreak          " soft-wrap lines only at certain characters (see :help breakat)

-- " If you like line numbers, you may want this instead:
-- "set number
-- "set showbreak=------>\  " line up soft-wrap prefix with the line numbers
-- op.cpoptions = 'n' -- " start soft-wrap lines (and any prefix) in the line-number area
