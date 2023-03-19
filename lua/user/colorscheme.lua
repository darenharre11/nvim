--used with aoeivux/base46.nvim

local present, base46 = pcall(require, "base46")
if not present then
  return
end

local theme = "kanagawa"
local color_base = "base46"

local status_ok, theme_file = pcall(require, "user.themes." .. theme)
if not status_ok then
  return
end

local theme_opts = {
  base = color_base,
  theme = theme,
  transparency = false,
}

base46.load_theme(theme_opts)

------------------------------
---- Polishing some hightlights, overwriting base46
------------------------------
-- I copied over the theme files, so i can easily pull them in for polishing
-- local theme_file = require("user.themes." .. theme)
local theme_colors = theme_file.base_30

-- some more generic colors
local generic_colors = {
  dark_offset = "#13131a",
  white_offset = "#f0f0ff",
}

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
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#a48ec7" })
vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#B3E369" })
vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#B3E369" })
vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#9CDCFE" })

-- LSP colors
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = generic_colors.dark_offset })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = generic_colors.dark_offset })
-- vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#6c6c94", bg = "#13131a" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = generic_colors.white_offset, bg = generic_colors.dark_offset })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = generic_colors.dark_offset, bg = generic_colors.dark_offset })

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = theme_colors.pink })

--wilder colors
-- vim.api.nvim_set_hl(0, "WilderPoppupMenuAccent", { fg = theme_colors.sun, bg = theme_colors.sun })
-- vim.api.nvim_set_hl(0, "WilderPopupMenuAccent", { fg = theme_colors.sun, bg = theme_colors.sun })

-- bufferline.nvim
vim.api.nvim_set_hl(0, "BufferLineFill", { bg = theme_colors.one_bg })
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = theme_colors.dark_purple, bg = theme_colors.dark_purple })
vim.api.nvim_set_hl(0, "BufferLineDevIconLua", { bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultSelected", { bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultInactive", { bg = theme_colors.darker_black })

-- telescope.nvim
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = theme_colors.statusline_bg, bg = theme_colors.statusline_bg })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = theme_colors.black2, bg = theme_colors.black2 })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = theme_colors.darker_black, bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = theme_colors.darker_black, bg = theme_colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = theme_colors.darker_black })

-- lsp_signature.nvim
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = theme_colors.pink })

-- noice.nvim
vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = generic_colors.dark_offset })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = generic_colors.dark_offset, bg = generic_colors.dark_offset })
