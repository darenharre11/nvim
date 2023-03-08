local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
    mappings = {
      i = {
            ["<Down>"] = actions.cycle_history_next,
            ["<Up>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
      },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
      buffers = {
        previewer = false,
        layout_config = {
          width = 80,
        },
      },
      oldfiles = {
        prompt_title = "History",
      },
      lsp_references = {
        previewer = false,
      },
      live_grep = {
        additional_args = function(opts)
          return { "--hidden" }
        end,
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
    },
  },
})
