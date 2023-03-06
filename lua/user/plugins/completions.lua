local status_ok, cmp = pcall(require, "cmp")

if not status_ok then
  return
end

--luasnip - load vscode snippets
require("luasnip.loaders.from_vscode").lazy_load()



local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
        ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
        ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
        ["<CR>"] = cmp.mapping.confirm { select = false },
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-Esc>"] = cmp.mapping.close(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    -- { name = "vsnip" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "copilot", group_index = 2 },
    -- { name = "nvim_lsp_signature_help", insert = true }, -- using lsp_signature plugin
    { name = "buffer",  keyword_length = 2, max_item_count = 1 },
    { name = "emoji",   insert = true },
  },
  completion = {
    keyword_length = 1,
    completeopt = "menu,noselect",
  },
  view = {
    entries = "custom",
  },
  formatting = {
    fields = {
      "abbr",
      "kind",
      "menu"
    },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind

      -- Source
      vim_item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
          })[entry.source.name]

      vim_item.dup = 0
      -- vim_item.dup = ({
      --   buffer = 1,
      --   path = 1,
      --   nvim_lsp = 0,
      -- })[entry.source.name] or 0

      return vim_item
    end
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
    documentation = {
      winhighlight = "Normal:CmpDoc,FloatBorder:CmpDocBorder",
    },
    completion = {
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,FloatBorder:CmpBorder,Search:None",
    },
  },
  experimental = {
    ghost_text = true,
  },
}
