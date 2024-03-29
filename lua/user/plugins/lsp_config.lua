local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local null_status_ok, null_ls = pcall(require, "null-ls")
if not null_status_ok then
  return
end

------------------
------------------
---- Mason
------------------
------------------

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
})

local servers = {
  "cssls",
  "html",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "tailwindcss",
}

require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_installation = true,
})

------------------
------------------
---- Mappings
------------------
------------------
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
--  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<space>fm", function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

------------------
------------------
---- Configs
------------------
------------------

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({})

----
---- Formatting ????
----
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup_format,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr })
    end,
  })
end

----
---- Null-ls
----
null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint,
    -- null_ls.builtins.completion.spell,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.black,
  },
})

require("mason-null-ls").setup({
  ensure_installed = { "stylua", "jq" },
  automatic_installation = true,
  automatic_setup = true,
})

----
---- Setup servers
----
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    enable_format_on_save(client, bufnr)
  end,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python", "python3" },
  -- settings = {},
})

-- pyright is better than jedi
-- lspconfig.jedi_language_server.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "python", "python3" },
-- }

lspconfig.tsserver.setup({
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities,
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
})

------------------
------------------
---- Handlers
------------------
------------------

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "●" },
  severity_sort = true,
})

------------------
------------------
-- Diagnotics
------------------
------------------

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
