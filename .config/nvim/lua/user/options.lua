local o = vim.opt

o.number = true
o.relativenumber = true

o.wrap = false -- duh

-- INDENTATION
o.autoindent = true -- keeps indent when enter
o.expandtab = true -- uses spaces instead of tabs
o.shiftround = true -- rounds tabbing to shiftwidth from << or >>
o.shiftwidth = 4 -- number of spaces to use for autoindents
o.smartindent = true -- something about curly brace indentation
o.smarttab = true -- links shiftwidtm and tab key
o.softtabstop = -1 -- -1 merges this with shiftwidth
o.tabstop = 4 -- literally shiftwidth 
-- o.vartabstop -- idk what this does but kinda advanced i think

-- SEARCHING
o.ignorecase = true -- when pattern searching, ignores case
o.smartcase = true -- if you include mixed case, pattern searching cares about case

-- APPEARANCE
o.cursorline = true -- underlines row with cursor
o.termguicolors = true -- full color terminals use 24-bit color now
o.signcolumn = "yes" -- show sign column always with or without signs

-- CLIPBOARD
-- o.clipboard:append("unnamedplus") -- use system clipboard as default register
o.clipboard = 'unnamedplus'

-- SPLIT WINDOWS
o.splitright = true -- splits vertical windows to the right
o.splitbelow = true -- splits horizontal windows to the bottom

-- SCROLLOFF
o.scrolloff = 6
o.sidescrolloff = 6
