local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- Tab settings
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.wrap = false

-- Undo file
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 6

opt.updatetime = 50
opt.colorcolumn = "80"
opt.tildeop = true
opt.clipboard:append("unnamedplus")

-- folds
opt.foldlevelstart = 99
opt.foldminlines = 8

-- spelling
opt.spell = true
opt.spelllang = { "en" }
