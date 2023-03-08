local fn = vim.fn

----------------
-- Packer Helpers
----------------
-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
})

----------------
-- Plugins
----------------
-- Install your plugins here
return packer.startup(function(use)
  ------------------------
  -- General plugins
  ------------------------

  use({ "wbthomason/packer.nvim" })                      -- Have packer manage itself
  use({ "nvim-lua/plenary.nvim" })                       -- Useful lua functions used by lots of plugins
  use({ "windwp/nvim-autopairs" })                       -- Autopairs, integrates with both cmp and treesitter
  use({ "numToStr/Comment.nvim" })                       -- Auto-commenter via gcc
  use({ "kyazdani42/nvim-web-devicons" })                --Pretty icons
  use({ "kyazdani42/nvim-tree.lua" })                    --File explorer
  -- use({ "romgrk/barbar.nvim" })
  use({ "akinsho/bufferline.nvim" })                     --Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
  use({ "moll/vim-bbye" })                               --Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
  use({ "nvim-lualine/lualine.nvim" })                   --Bottom line
  use({ "akinsho/toggleterm.nvim" })                     --Floating terminal
  use({ "ahmedkhalf/project.nvim" })                     -- Project trackers
  -- use({ "lewis6991/impatient.nvim" })                    --Impatient.nvim: Speed up loading Lua modules in Neovim to improve startup time.
  use({ "lukas-reineke/indent-blankline.nvim" })         --indents next line, i.e. o and O
  use({ "goolord/alpha-nvim" })                          -- Alpha: dashboard for nvim
  use({ "nvim-telescope/telescope.nvim" })               -- Telescope: fuzzy finder niceness
  use({ "nvim-treesitter/nvim-treesitter" })             -- better highlighting
  use({ "lewis6991/gitsigns.nvim" })                     -- show git signs in gutter
  use({ "AndrewRadev/splitjoin.vim" })                   -- gS and gJ to split single lines to multiple and vice versa
  use({ "airblade/vim-rooter" })                         -- set root directory to project base
  use({ "tommcdo/vim-lion" })                            -- Vertically align text via gl and gL
  use({ "folke/trouble.nvim" })                          -- TroubleToggle
  use({ "rcarriga/nvim-notify" })                        -- Handy notifications for vim actions
  use({ "folke/lsp-colors.nvim" })                       -- Recommended for Trouble
  use({ "NvChad/nvim-colorizer.lua" })                   -- Show hex codes as colors
  use({ "JoosepAlviste/nvim-ts-context-commentstring" }) --Apply appropriate comments based on where you are in file, not just filetype
  use({ "jose-elias-alvarez/typescript.nvim" })          -- Typescript utils
  use({ "folke/which-key.nvim" })                        --keymap reminder window
  -- use({ "farmergreg/vim-lastplace" })                    -- move to last place when opening file
  use({ "Pocco81/auto-save.nvim" })                      -- because im lazy
  use({ "famiu/bufdelete.nvim" })                        -- because im
  use({ "gcmt/wildfire.vim" })                           -- select the closest text object among a group of candidatee
  use({ "christoomey/vim-tmux-navigator" })              --also install in tmux
  use({ "MunifTanjim/nui.nvim" })                        --noice requirement
  use({ "folke/noice.nvim" })                            -- a bunch of stuff like, messages to notify.nvim, signature help, :command prompt and more
  use({ "chrisgrieser/nvim-recorder" })                  --better macro experience. useful with noice since cmd bottom bar goes away.
  use({ "simnalamburt/vim-mundo" })                      -- undo ui


  -- --wilder
  -- use({ "gelguy/wilder.nvim" })    -- a better wildmenu (:command auto completion)
  -- use({ "romgrk/fzy-lua-native" }) -- a better wildmenu (:command auto completion)
  -- use({ "sharkdp/fd" })            -- a better wildmenu (:command auto completion)
  -- use({ "nixprime/cpsm" })         -- a better wildmenu (:command auto completion)


  -- tpope magic
  use({ "tpope/vim-repeat" })   -- better repeat
  use({ "tpope/vim-surround" }) -- add surrounding tags and stuff
  use({ "tpope/vim-eunuch" })   -- Adds :Rename, :SudoWrite

  -- Colorschemes
  use({ "folke/tokyonight.nvim" })
  use({ "lunarvim/darkplus.nvim" })
  use({ "projekt0n/github-nvim-theme" })
  use({ "ellisonleao/gruvbox.nvim" })
  use({ "rebelot/kanagawa.nvim" })
  use({ "norcalli/nvim-base16.lua" })

  --Theme helpers (for plugins like telescope)
  use({ "aoeivux/base46.nvim" })

  -- Jupyter stuff
  use({ "goerz/jupytext.vim" })                 --text .ipynb files
  use({ "kana/vim-textobj-user" })              --hydrogen dependency
  use({ "GCBallesteros/vim-textobj-hydrogen" }) --create objects for cells like vih to select cell
  use({ "untitled-ai/jupyter_ascending.vim" })  -- sync notebook with files


  -- -- GitHub Copilot
  use({ "zbirenbaum/copilot.lua" })
  use({
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  })

  --lsp
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({ "neovim/nvim-lspconfig" })

  --completions
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  use({ "hrsh7th/cmp-cmdline" })
  use({ "hrsh7th/nvim-cmp" })
  use({ "ray-x/cmp-treesitter" })
  -- use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
  -- use({ "ray-x/lsp_signature.nvim" })
  -- use({ "onsails/lspkind.nvim" }) -- for stylings/icons

  --snippets
  use({ "L3MON4D3/LuaSnip" })
  use({ "saadparwaiz1/cmp_luasnip" })
  use({ "rafamadriz/friendly-snippets" })

  --niceties
  use({ "RRethy/vim-illuminate" })
  use({ "folke/neodev.nvim" }) --nvim lua lsp, docs, help and completion

  ----------------
  -- Config editing functions
  ----------------
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
