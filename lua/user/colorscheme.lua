-- this was used with
--local theme_colors.heme = "kanagawa"
--
--local status_ok, _ = pcall(vim.cmd, "theme_colors.heme " .. theme_colors.heme)
--if not status_ok then
--	return
--end
--
--local status_ok, base46 = pcall(require, "base46")
--
--if not status_ok then
--	return
--end
--
--base46.setup({
--	theme = "kanagawa",
--})
--

-- exit if it can't be found


--used with aoeivux/base46.nvim


local present, base46 = pcall(require, "base46")
if not present then
  return
end

local theme = "chadracula"
local color_base = "base46"

local theme_opts = {
  base = color_base,
  theme = theme,
  transparency = false,
}

base46.load_theme(theme_opts)

------------------------------
---- Polishing some hightlights, overwriting base46
------------------------------


-- cmp colors
--  see https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-add-visual-studio-code-dark-theme-theme_colors.to-the-menu
vim.cmd([[
  highlight! link CmpItemMenu Comment
  " gray
  highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
  " blue
  highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
  highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
  " light blue
  highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindField guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindSnippet guibg=NONE guifg=#ff9942
  highlight! CmpItemKindEnum guibg=NONE guifg=#B3E369
  " pink
  highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
  highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
  " front
  highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindConstant guibg=NONE guifg=#fa9b61
  highlight! CmpItemKindClass guibg=NONE guifg=#a48ec7

]])

-- --kanagawa fixes
-- -- wilder.nvim
-- vim.api.nvim_set_hl(0, "WilderPoppupMenuAccent", { bg = "#383845" })
-- vim.api.nvim_set_hl(0, "WilderPopupMenuAccent", { bg = "#383845" })
--
-- -- bufferline.nvim
-- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#25252e" })
-- vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = "#9536d9", bg = "#9536d9" })
-- vim.api.nvim_set_hl(0, "BufferLineDevIconLua", { bg = "#25252e" })
-- vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultSelected", { bg = "#25252e" })
-- vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultInactive", { bg = "#25252e" })
--
-- vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#25252e", bg = "#25252e" })
-- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#25252e", bg = "#25252e" })
-- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#191922", bg = "#191922" })
-- vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#13131a", bg = "#13131a" })
-- vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "#13131a" })

local generic_colors = {
  dark_offset = "#13131a",
  white_offset = "#f0f0ff",
}

--chadracul
local theme_colors = {
  white = "#F8F8F2",
  darker_black = "#222430",
  black = "#282A36",  --  nvim bg
  black2 = "#2d303e",
  one_bg = "#373844", -- real bg of onedark
  one_bg2 = "#44475a",
  one_bg3 = "#565761",
  grey = "#5e5f69",
  grey_fg = "#666771",
  grey_fg2 = "#6e6f79",
  light_grey = "#73747e",
  red = "#ff7070",
  baby_pink = "#ff86d3",
  pink = "#FF79C6",
  line = "#3c3d49", -- for lines like vertsplit
  green = "#50fa7b",
  vibrant_green = "#5dff88",
  nord_blue = "#8b9bcd",
  blue = "#a1b1e3",
  yellow = "#F1FA8C",
  sun = "#FFFFA5",
  purple = "#BD93F9",
  dark_purple = "#BD93F9",
  teal = "#92a2d4",
  orange = "#FFB86C",
  cyan = "#8BE9FD",
  statusline_bg = "#2d2f3b",
  lightbg = "#41434f",
  pmenu_bg = "#b389ef",
  folder_bg = "#BD93F9",
}

-- LSP colors
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = generic_colors.dark_offset })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = generic_colors.dark_offset })
-- vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#6c6c94", bg = "#13131a" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = generic_colors.white_offset, bg = generic_colors.dark_offset })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = generic_colors.dark_offset, bg = generic_colors.dark_offset })

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = theme_colors.pink })

-- vim.api.nvim_set_hl(0, "WilderPoppupMenuAccent", { fg = theme_colors.sun, bg = theme_colors.sun })
-- vim.api.nvim_set_hl(0, "WilderPopupMenuAccent", { fg = theme_colors.sun, bg = theme_colors.sun })

-- bufferline.nvim
vim.api.nvim_set_hl(0, "BufferLineFill", { bg = theme_colors.one_bg })
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = theme_colors.dark_purple, bg = theme_colors.dark_purple })
vim.api.nvim_set_hl(0, "BufferLineDevIconLua", { bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultSelected", { bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultInactive", { bg = theme_colors.darker_black })

vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = theme_colors.statusline_bg, bg = theme_colors.statusline_bg })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = theme_colors.black2, bg = theme_colors.black2 })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = theme_colors.darker_black, bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = theme_colors.darker_black, bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = theme_colors.darker_black })

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = theme_colors.pink })
