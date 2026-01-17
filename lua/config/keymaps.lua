-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

-----------------------------------------------------------
-- Modes
-----------------------------------------------------------
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-----------------------------------------------------------
-- General
-----------------------------------------------------------

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-----------------------------------------------------------
-- Nvim controls
----------------------------------------------------------

-- Reload nvim config
vim.keymap.set("n", "<leader>R", ":source ~/.config/nvim/init.lua<CR>")

-- Fast saving with <leader> and w
vim.keymap.set("n", "<leader>ww", ":w<CR>")

-- fast exiting buffer
vim.keymap.set("n", "<leader>q", function() Snacks.bufdelete() end)

-- Close all windows and exit from Neovim with <leader> and q
vim.keymap.set("n", "<leader>Q", ":qa!<CR>")

-- Edit your nvim config
vim.keymap.set("n", "<leader>;", ":e $MYVIMRC <CR>")

-- close all buffers except the current
vim.keymap.set("n", "<leader>bo", "<cmd>%bd|e#<cr>", { desc = "Close all buffers but the current one" }) -- https://stackoverflow.com/a/42071865/516188

-----------------------------------------------------------
-- Misc
-----------------------------------------------------------

-- Disable arrow keys
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

-- remaps to keep cursor in center of screen with zz
vim.keymap.set("", "n", "nzzzv")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "gg", "ggzz")

-- Map Esc to kk and jj
-- vim.keymap.set("i", "kk", "<Esc>") --This one is causing freezes for some reason
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "kk", "<ESC>")

-- use ESC to turn off search highlighting
vim.keymap.set("n", "<Esc>", ":noh <CR>")

-- to cycle open buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprev<CR>")

-- Reselect visual selection after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Easy insertion of a trailing ; or , from insert mode
vim.keymap.set("i", ";;", "<Esc>A;<Esc>")
vim.keymap.set("i", ",,", "<Esc>A,<Esc>")

-- -- Move text up and down
-- vim.keymap.set("n", "<A-j>", ":move .+1<CR>==")
-- vim.keymap.set("n", "<A-k>", ":move .-2<CR>==")
-- vim.keymap.set("i", "<A-j>", "<Esc>:move .+1<CR>==gi")
-- vim.keymap.set("i", "<A-k>", "<Esc>:move .-2<CR>==gi")
-- vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
-- vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- paste no matter what
vim.keymap.set("n", "p", '"0p')
vim.keymap.set("v", "p", '"0p')
vim.keymap.set("x", "p", '"0p')

-----------------------------------------------------------
-- Buffer Splits and Controls
-----------------------------------------------------------

-- easy splits
vim.keymap.set("n", "<leader>V", ":vsp<CR>")
vim.keymap.set("n", "<leader>P", ":sp<CR>")

-- Change split orientation
vim.keymap.set("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- -- NvimTree
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
--
-- -- Import
-- vim.keymap.set("n", "<leader>i", ":TypescriptAddMissingImports<CR>")
-- vim.keymap.set("n", "<leader>io", ":TypescriptOrganizeImports<CR>")
--
-- -- ToggleTerm
-- vim.keymap.set("n", "<F2>", "2:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("i", "<F2>", "2:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("t", "<F2>", "<C-\\><C-n>:ToggleTerm<CR>")
--
-- vim.keymap.set("n", "<F3>", "3:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("i", "<F3>", "3:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("t", "<F3>", "<C-\\><C-n>:ToggleTerm<CR>")
--
-- vim.keymap.set("n", "<F4>", "4:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("i", "<F4>", "4:ToggleTerm cd %:p:h <CR>")
-- vim.keymap.set("t", "<F4>", "<C-\\><C-n>:ToggleTerm<CR>")
--
-- -- Telescope
-- vim.keymap.set("n", "<leader>ft", ":Telescope <CR>")                          -- find telescope commands
-- vim.keymap.set("n", "<leader>ff", ":Telescope git_files<CR>")                 -- find files in git repo
-- vim.keymap.set("n", "<leader>fh", ":Telescope oldfiles<CR>")                  -- find recently opened files
-- vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")                   -- find buffers
-- vim.keymap.set("n", "<leader>fl", ":Telescope current_buffer_fuzzy_find<CR>") -- find in current buffer
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")                 -- find in files
-- vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>")                   -- find keymaps
-- vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>")                  -- find recently opened git projects
-- vim.keymap.set("n", "<leader>fi", ":Telescope highlights<CR>")                -- find nvim highlights
-- vim.keymap.set("n", "<leader>fn", ":Telescope notify<CR>")                    -- review all notifications
--
-- -- Which key
-- vim.keymap.set("n", "<leader>k", ":WhichKey<CR>")

-- formatting
-- DEPRECATED: moved to lsp_config
-- vim.keymap.set("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<CR>")

-- -- Trouble
-- vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle document_diagnostics<cr>") -- troubletoggle, but for only the document :)
-- vim.keymap.set("n", "<leader>ta", "<cmd>TroubleToggle<cr>")                      -- troubletoggle all
-- vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
-- vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>")
-- vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>")
-- vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
--
-- -- Mundo.vim
-- vim.keymap.set("n", "<leader>u", ":MundoToggle<CR>")
--
-- -- ChatGPT.nvim
-- vim.keymap.set("n", "<leader>g", ":ChatGPT<CR>")
