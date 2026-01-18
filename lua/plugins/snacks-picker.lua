return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,  -- show hidden files by default
            ignored = true, -- show git-ignored files by default
            exclude = { "git" },
          },
        },
      },
    },
  },
}
