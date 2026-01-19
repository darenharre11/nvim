-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-----------------------------------------------------------
-- Neovim settings and configuration
-----------------------------------------------------------

-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.opt.mouse = "a"                             -- Enable mouse support
vim.opt.clipboard = "unnamedplus"               -- Copy/paste to system clipboard
vim.opt.swapfile = false                        -- Don't use swapfile
vim.opt.completeopt = "menu,menuone,noselect"   -- Autocomplete options
vim.opt.backup = false                          -- creates a backup file
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showtabline = 0                         -- always show tabs
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.laststatus = 3                          -- only the last window will always have a status line
vim.opt.showcmd = false                         -- hide (partial) command in the last line of the screen (for performance)
vim.opt.ruler = false                           -- hide the line and column number of the cursor position
vim.opt.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.fillchars.eob = " "                     -- show empty lines at the end of a buffer as ` ` {default `~`}
vim.opt.shortmess:append("c")                   -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.whichwrap:append("<,>,[,],h,l")         -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append("-")                   -- treats words with `-` as single words
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- This is a sequence of letters which describes how automatic formatting is to be done
vim.opt.spell = false

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
vim.opt.title = true -- Set title to titlestring
vim.opt.number = true -- Show line number
vim.opt.relativenumber = true -- Make line number relative
vim.opt.showmatch = true -- Highlight matching parenthesis
vim.opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')
vim.opt.colorcolumn = "130" -- Line lenght marker at 80 columns
vim.opt.splitright = true -- Vertical split to the right
vim.opt.splitbelow = true -- Orizontal split to the bottom
vim.opt.ignorecase = true -- Ignore case letters when search
vim.opt.smartcase = true -- Ignore lowercase for the whole pattern
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.signcolumn = "yes:2" -- Enable sign column for gitsigns
vim.opt.list = true -- Enable list.. :help list
vim.opt.listchars = "tab:▸ ,trail:·" -- Show trailing space and tab characters
vim.opt.showmode = false -- Showing mode will be handled by status bar

-- replacing wildmenu with wilder.nvim
-- vim.opt.wildmenu = true
-- vim.opt.wildmode = "full"
-- vim.opt.wildoptions = "pum"           -- Enable popup menu for completion
-- vim.opt.wildignorecase = true

-----------------------------------------------------------
-- Scrolling
-----------------------------------------------------------
-- I am supersceding these with remaps to keep cursor in center of screen
vim.opt.scrolloff = 8     -- Prevent cursor from going to bottom or
vim.opt.sidescrolloff = 8 -- the side of the window

-----------------------------------------------------------
-- Wrapping
-----------------------------------------------------------
vim.opt.wrap = true        -- Wrap lines
vim.opt.linebreak = true   -- Wrap on word boundary
vim.opt.showbreak = ">>"   -- Show characters on broken line
vim.opt.textwidth = 130    -- Break at this amount
vim.opt.breakindent = true -- Indent wrapped line

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.shiftwidth = 2     -- Shift 2 spaces when tab
vim.opt.tabstop = 2        -- 1 tab == 2 spaces
vim.opt.smartindent = true -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
vim.opt.hidden = true    -- Enable background buffers
vim.opt.history = 100    -- Remember N lines in history
-- vim.opt.lazyredraw = true -- Faster scrolling
vim.opt.synmaxcol = 240  -- Max column for syntax highlight
vim.opt.updatetime = 250 -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------

-- Disable nvim intro
vim.opt.shortmess:append("sI")

-- Disable builtins plugins
-- local disabled_built_ins = {
--   "netrw",
--   "netrwPlugin",
--   "netrwSettings",
--   "netrwFileHandlers",
--   "gzip",
--   "zip",
--   "zipPlugin",
--   "tar",
--   "tarPlugin",
--   "getscript",
--   "getscriptPlugin",
--   "vimball",
--   "vimballPlugin",
--   "2html_plugin",
--   "logipat",
--   "rrhelper",
--   "spellfile_plugin",
--   "matchit",
-- }
--
-- for _, plugin in pairs(disabled_built_ins) do
--   vim.g["loaded_" .. plugin] = 1
-- end
