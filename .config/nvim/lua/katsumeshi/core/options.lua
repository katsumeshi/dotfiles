vim.cmd("let g:netrw_liststyle = 3") -- tree style

local o = vim.opt

-- line numbers
o.relativenumber = true
o.number = true

-- tabs & indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true -- to insert space characters whenever the tab key is pressed
o.autoindent = true

-- line wrapping
o.wrap = false

-- search settings
o.ignorecase = true -- enable non case sensitive search
o.smartcase = true -- detect case sensitive if capital is there

-- cursor line
o.cursorline = true -- holizontal cusuor under line

-- appearance
o.termguicolors = true -- enables 24-bit RGB color
o.background = "dark"
o.signcolumn = "yes" -- left side of number column turning into grey

-- backspace
o.backspace = "indent,eol,start" -- enable any remvoal with delete backwards

-- clipboard
o.clipboard:append("unnamedplus") -- allow to use system clipboard

-- split windows
o.splitright = true
o.splitbelow = true

-- opt.iskeyword.append("-") -- "-" becomes a part of the word
