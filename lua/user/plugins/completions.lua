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
  Copilot = "",
}

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sorting = {
    priority_weight = 1,
    comparators = {
      require("copilot_cmp.comparators").prioritize,

      -- Below is the default comparitor list and order for nvim-cmp
      -- cmp.config.compare.offset,
      -- cmp.config.compare.scopes,
      -- cmp.config.compare.exact,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
  mapping = cmp.mapping.preset.insert({
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
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-Esc>"] = cmp.mapping.close(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "copilot",  priority = 1000 },
    { name = "nvim_lsp", priority = 900 },
    { name = "luasnip",  priority = 800 },
    { name = "nvim_lua", priority = 700 },
    { name = "buffer",   priority = 600, keyword_length = 4 },
    { name = "path",     priority = 500 },
    {
      name = "cmdline",
      option = {
        ignore_cmds = { "Man", "!" },
      },
      priority = 100,
      max_item_count = 4,
    },
    { name = "emoji", priority = 300, max_item_count = 4, insert = true },
  },
  completion = {
    keyword_length = 3,
    -- completeopt = "menu,noselect",
    completeopt = "noselect, menuone, preview",
  },
  view = {
    entries = "custom",
  },
  formatting = {
    fields = {
      "abbr",
      "kind",
      "menu",
    },
    format = function(entry, vim_item)
      -- Source
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        copilot = "[Copilot]",
        cmdline = "[Cmdline]",
        emoji = "[Emoji]",
      })[entry.source.name]

      -- Kind icons
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind

      -- vim_item.dup = 0
      vim_item.dup = ({
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
      })[entry.source.name] or 0

      return vim_item
    end,
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
})

-- `:` cmdline setup.
-- cmp.setup.cmdline(":", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = "path" },
--   }, {
--     {
--       name = "cmdline",
--       option = {
--         ignore_cmds = { "Man", "!" },
--       },
--     },
--   }),
-- })
