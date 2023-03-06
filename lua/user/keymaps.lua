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
-- shorten map function and make it easier (i.e. do not have to express opts)
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Comment
-- TODO: Not sure what this is.. Came from nvim-
-- map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",)
-- map("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

local opts = {}

-----------------------------------------------------------
-- Nvim controls
----------------------------------------------------------

-- Fast saving with <leader> and w
map("n", "<leader>w", ":w<CR>")

-- fast exiting buffer
map("n", "<leader>q", ":Bdelete!<CR>")

-- close all buffers except the current
map("n", "<leader>bo", "<cmd>%bd|e#<cr>", { desc = "Close all buffers but the current one" }) -- https://stackoverflow.com/a/42071865/516188

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>Q", ":qa!<CR>")

-- Edit your nvim config
map("n", "<leader>;", ":e $MYVIMRC <CR>")

-----------------------------------------------------------
-- Misc
-----------------------------------------------------------

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- remaps to keep cursor in center of screen with zz
map("", "n", "nzzzv")
map("n", "j", "jzz")
map("n", "k", "kzz")
map("n", "G", "Gzz")
map("n", "gg", "ggzz")

-- Map Esc to kk and jj
-- map("i", "kk", "<Esc>") --This one is causing freezes for some reason
map("i", "jj", "<Esc>")
map("i", "jk", "<ESC>")

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh <CR>")

-- to cycle open buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprev<CR>")

-- Reselect visual selection after indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Easy insertion of a trailing ; or , from insert mode
map("i", ";;", "<Esc>A;<Esc>")
map("i", ",,", "<Esc>A,<Esc>")

-- Move text up and down
map("n", "<A-j>", ":move .+1<CR>==")
map("n", "<A-k>", ":move .-2<CR>==")
map("i", "<A-j>", "<Esc>:move .+1<CR>==gi")
map("i", "<A-k>", "<Esc>:move .-2<CR>==gi")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- paste no matter what
map("n", "p", "\"0p")
map("v", "p", "\"0p")
map("x", "p", "\"0p")

-----------------------------------------------------------
-- Buffer Splits and Controls
-----------------------------------------------------------

-- easy splits
map("n", "<leader>V", ":vsp<CR>")
map("n", "<leader>P", ":sp<CR>")

-- Change split orientation
map("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
map("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Import
map("n", "<leader>i", ":TypescriptAddMissingImports<CR>")
map("n", "<leader>io", ":TypescriptOrganizeImports<CR>")

-- ToggleTerm
map("n", "<F1>", ":ToggleTerm cd %:p:h <CR>")
map("t", "<F1>", "<C-\\><C-n>:ToggleTerm<CR>")
map("n", "<F2>", "2:ToggleTerm cd %:p:h <CR>")
map("t", "<F2>", "<C-\\><C-n>:ToggleTerm<CR>")
map("n", "<F3>", "3:ToggleTerm cd %:p:h <CR>")
map("t", "<F3>", "<C-\\><C-n>:ToggleTerm<CR>")
map("n", "<F4>", "4:ToggleTerm cd %:p:h <CR>")
map("t", "<F4>", "<C-\\><C-n>:ToggleTerm<CR>")
-- map("t", "<ESC>", "<C-\\><C-n>:ToggleTerm<CR>")

-- Telescope
map("n", "<leader>ft", ":Telescope <CR>")                                        -- find telescope commands
map("n", "<leader>ff", ":Telescope git_files<CR>")                               -- find files in git repo
map("n", "<leader>fh", ":Telescope oldfiles<CR>")                                -- find recently opened files
map("n", "<leader>fb", ":Telescope buffers<CR>")                                 -- find buffers
map("n", "<leader>fl", ":Telescope current_buffer_fuzzy_find<CR>")               -- find in current buffer
map("n", "<leader>fg", ":Telescope live_grep<CR>")                               -- find in files
map("n", "<leader>fk", ":Telescope keymaps<CR>")                                 -- find keymaps
map("n", "<leader>fp", ":Telescope projects<CR>")                                -- find recently opened git projects
map("n", "<leader>fi", ":Telescope highlights<CR>")                              -- find nvim highlights
map("n", "<leader>fu", ":lua require(\"telescope\").extensions.undo.undo()<CR>") -- find nvim highlights

-- Which key
map("n", "<leader>k", ":WhichKey<CR>")

-- formatting
-- DEPRECATED: moved to lsp_config
-- map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<CR>")

-- Trouble
map("n", "<leader>tt", "<cmd>TroubleToggle document_diagnostics<cr>") -- troubletoggle, but for only the document :)
map("n", "<leader>ta", "<cmd>TroubleToggle<cr>")                      -- troubletoggle all
map("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
map("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>")
map("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>")
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
