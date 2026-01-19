-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-----------------------------------------------------------
-- AutoCommands
-----------------------------------------------------------

-----------------------------------------------------------
-- From nvim-basic-ide
-----------------------------------------------------------
-- easy exity for temporary windows
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
  end,
})

-- smart window resizing. wincmd = is eqalizewindows
vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})


-- get rid of annoying cmd windows when make mistakes
-- vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
--   callback = function()
--     vim.cmd("quit")
--   end,
-- })

-- visual feedback on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 400 })
  end,
})

-- vim.illuminate
-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
--   callback = function()
--     vim.cmd("hi link illuminatedWord LspReferenceText")
--   end,
-- })
--
-- vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
--   callback = function()
--     local line_count = vim.api.nvim_buf_line_count(0)
--     if line_count >= 5000 then
--       vim.cmd("IlluminatePauseBuf")
--     end
--   end,
-- })

-- Don't auto comment new lines
vim.cmd([[autocmd BufEnter * set fo-=c fo-=r fo-=o]])

--show line diagnostics automatically in hover window
-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
