local status_ok, copilot = pcall(require, "copilot")

if not status_ok then
  return
end

-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)
vim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"

-- None of this seems to be needed with the config below.
-- vim.g.copilot_assume_mapped = true
-- vim.g.copilot_tab_fallback = ""
-- vim.g.copilot_no_tab_map = true

copilot.setup({
  panel = {
    enabled = false,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
  },
  suggestion = {
    enabled = false,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
        ["*"] = true,
        ["."] = true,
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    sh = function()
      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
        -- disable for .env files
        return false
      end
      return true
    end,
  },
  copilot_node_command = 'node', -- Node version must be < 18
  server_opts_overrides = {},
})
