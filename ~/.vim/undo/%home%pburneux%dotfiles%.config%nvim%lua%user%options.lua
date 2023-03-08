Vim�UnDo� "w������n�%ZM+,V���oH��E�a!n�y�   ~                                  d��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         ~      vim.opt.undodir = "~/.vim/undo"5��                         �              #       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��    �   ~               �               ~   ;-----------------------------------------------------------   $-- Neovim settings and configuration   ;-----------------------------------------------------------       ;-----------------------------------------------------------   
-- General   ;-----------------------------------------------------------   Gvim.opt.mouse = "a"                             -- Enable mouse support   Qvim.opt.clipboard = "unnamedplus"               -- Copy/paste to system clipboard   Evim.opt.swapfile = false                        -- Don't use swapfile   Gvim.opt.completeopt = "menu,menuone,noselect"   -- Autocomplete options   Mvim.opt.clipboard = "unnamedplus"               -- Use linux system clipboard   Hvim.opt.backup = false                          -- creates a backup file   pvim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages   Zvim.opt.conceallevel = 0                        -- so that `` is visible in markdown files   Qvim.opt.fileencoding = "utf-8"                  -- the encoding written to a file   cvim.opt.hlsearch = true                         -- highlight all matches on previous search pattern   Evim.opt.pumheight = 10                          -- pop up menu height   Cvim.opt.showtabline = 0                         -- always show tabs   svim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)   Ivim.opt.undofile = true                         -- enable persistent undo   "-- vim.opt.undodir = "~/.vim/undo"   �vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited   Mvim.opt.cursorline = true                       -- highlight the current line   fvim.opt.laststatus = 3                          -- only the last window will always have a status line   zvim.opt.showcmd = false                         -- hide (partial) command in the last line of the screen (for performance)   ivim.opt.ruler = false                           -- hide the line and column number of the cursor position   svim.opt.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}   avim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications   ovim.opt.fillchars.eob = " "                     -- show empty lines at the end of a buffer as ` ` {default `~`}   �vim.opt.shortmess:append("c")                   -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"   �vim.opt.whichwrap:append("<,>,[,],h,l")         -- keys allowed to move to the previous/next line when the beginning/end of line is reached   Xvim.opt.iskeyword:append("-")                   -- treats words with `-` as single words   �vim.opt.formatoptions:remove({ "c", "r", "o" }) -- This is a sequence of letters which describes how automatic formatting is to be done           ;-----------------------------------------------------------   -- Neovim UI   ;-----------------------------------------------------------   @vim.opt.title = true                 -- Set title to titlestring   8vim.opt.number = true                -- Show line number   Avim.opt.relativenumber = true        -- Make line number relative   Fvim.opt.showmatch = true             -- Highlight matching parenthesis   Mvim.opt.foldmethod = "marker"        -- Enable folding (default 'foldmarker')   A-- vim.opt.colorcolumn = "80" -- Line lenght marker at 80 columns   Cvim.opt.splitright = true            -- Vertical split to the right   Evim.opt.splitbelow = true            -- Orizontal split to the bottom   Gvim.opt.ignorecase = true            -- Ignore case letters when search   Nvim.opt.smartcase = true             -- Ignore lowercase for the whole pattern   @vim.opt.termguicolors = true         -- Enable 24-bit RGB colors   Gvim.opt.signcolumn = "yes:2"         -- Enable sign column for gitsigns   @vim.opt.list = true                  -- Enable list.. :help list   Qvim.opt.listchars = "tab:▸ ,trail:·" -- Show trailing space and tab characters   Rvim.opt.showmode = false             -- Showing mode will be handled by status bar       &-- replacing wildmenu with wilder.nvim   -- vim.opt.wildmenu = true   -- vim.opt.wildmode = "full"   L-- vim.opt.wildoptions = "pum"           -- Enable popup menu for completion    -- vim.opt.wildignorecase = true       ;-----------------------------------------------------------   -- Scrolling   ;-----------------------------------------------------------   I-- I am supersceding these with remaps to keep cursor in center of screen   Cvim.opt.scrolloff = 8     -- Prevent cursor from going to bottom or   3vim.opt.sidescrolloff = 8 -- the side of the window       ;-----------------------------------------------------------   -- Wrapping   ;-----------------------------------------------------------   (vim.opt.wrap = true        -- Wrap lines   3vim.opt.linebreak = true   -- Wrap on word boundary   <vim.opt.showbreak = ">>"   -- Show characters on broken line   2vim.opt.textwidth = 80     -- Break at this amount   1vim.opt.breakindent = true -- Indent wrapped line       ;-----------------------------------------------------------   -- Tabs, indent   ;-----------------------------------------------------------   8vim.opt.expandtab = true   -- Use spaces instead of tabs   5vim.opt.shiftwidth = 2     -- Shift 2 spaces when tab   /vim.opt.tabstop = 2        -- 1 tab == 2 spaces   2vim.opt.smartindent = true -- Autoindent new lines       ;-----------------------------------------------------------   -- Memory, CPU   ;-----------------------------------------------------------   5vim.opt.hidden = true    -- Enable background buffers   7vim.opt.history = 100    -- Remember N lines in history   0-- vim.opt.lazyredraw = true -- Faster scrolling   ;vim.opt.synmaxcol = 240  -- Max column for syntax highlight   ;vim.opt.updatetime = 250 -- ms to wait for trigger an event       ;-----------------------------------------------------------   
-- Startup   ;-----------------------------------------------------------       -- Disable nvim intro   vim.opt.shortmess:append("sI")       -- Disable builtins plugins   local disabled_built_ins = {   
  "netrw",     "netrwPlugin",     "netrwSettings",     "netrwFileHandlers",   	  "gzip",     "zip",     "zipPlugin",     "tar",     "tarPlugin",     "getscript",     "getscriptPlugin",     "vimball",     "vimballPlugin",     "2html_plugin",     "logipat",     "rrhelper",     "spellfile_plugin",     "matchit",   }       -for _, plugin in pairs(disabled_built_ins) do      vim.g["loaded_" .. plugin] = 1   end5��            }      ~                           �    ~                                           5��