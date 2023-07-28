-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end
--
-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback
--
-- nvim_tree.setup({
--   open_on_tab = true,
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--   },
--   renderer = {
--     root_folder_modifier = ":t",
--     icons = {
--       glyphs = {
--         default = "",
--         symlink = "",
--         folder = {
--           arrow_open = "",
--           arrow_closed = "",
--           default = "",
--           open = "",
--           empty = "",
--           empty_open = "",
--           symlink = "",
--           symlink_open = "",
--         },
--         git = {
--           unstaged = "",
--           staged = "S",
--           unmerged = "",
--           renamed = "➜",
--           untracked = "U",
--           deleted = "",
--           ignored = "◌",
--         },
--       },
--     },
--   },
--   diagnostics = {
--     enable = true,
--     show_on_dirs = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     },
--   },
--   view = {
--     width = 30,
--     side = "left",
--     mappings = {
--       list = {
--         { key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
--         { key = "h",                  cb = tree_cb("close_node") },
--         { key = "v",                  cb = tree_cb("vsplit") },
--       },
--     },
--   },
--   tab = {
--     sync = {
--       open = true,
--       close = true,
--       ignore = {},
--     },
--   },
--   actions = {
--     remove_file = {
--       close_window = true,
--     },
--     open_file = {
--       resize_window = true,
--       quit_on_open = false,
--       window_picker = {
--         enable = true,
--         chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
--         exclude = {
--           filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
--           buftype = { "nofile", "terminal", "help" },
--         },
--       },
--     },
--   },
-- })

local present, nvimtree = pcall(require, "nvim-tree")

if not present then
  return
end

--require("base46").load_highlight "nvimtree"

local options = {
  filters = {
    dotfiles = false,
    exclude = { vim.fn.stdpath("config") .. "/lua/custom" },
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 25,
    -- hide_root_folder = true, -- deprecated with renderer.root_folder_label = false
  },
  git = {
    enable = false,
    ignore = true,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    highlight_git = false,
    highlight_opened_files = "none",
    root_folder_label = false,
    indent_markers = {
      enable = false,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },

      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

-- check for any override
vim.g.nvimtree_side = options.view.side

nvimtree.setup(options)
