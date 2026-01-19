-- explorer defaults:
-- url: https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#explorer
return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        -- your explorer configuration comes here
        auto_close = false, -- keep explorer open after picking file
      },
      picker = {
        -- wrap the preview window
        win = {
          input = {
            keys = {
              --key maps for inside picker window
            },
          },
          preview = {
            wo = {
              wrap = true,
            },
          }
        },
        sources = {
          explorer = {
            -- your explorer picker configuration comes here
            -- or leave it empty to use the default settings
            hidden = true,
            exclude = { "git" },
            auto_open = true,
          },
          files = {
            hidden = true, -- show hidden files by default
            exclude = { "git" },
          },
          notifications = {
          },
          keys = {
            -- rebind noticiations picker to <leader>nn. so that <leader>n can also be used for
            { "<leader>n",  false },
            { "<leader>nn", function() Snacks.picker.notifications() end, desc = "Notification History" },
          },
          -- this toggles wrapping in the preview window
        },
      },
    },
  },
}
