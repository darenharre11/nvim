Vim�UnDo� ܩɇ����?�EQ��R�d�i��p_��FP� r   ;       <                               d	n    _�                     3       ����                                                                                                                                                                                                                                                                                                                                                             d	�     �   4               �   5            �   5            �   5            �   5            �   3               �   3            5��    3                      g                     �    3                      g                     �    4                      h                     �    4                    |              D       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       d	�     �         7      require('copilot').setup({5��                         �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v       d	�    �   7               �               7   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then   	return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = true,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = true,       auto_trigger = false,       debounce = 75,       keymap = {        accept = "<M-l>",        next = "<M-]>",        prev = "<M-[>",        dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,       ["."] = false,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })       -- Set up copilot for cmp   *local copilot_cmp = require("copilot_cmp")   copilot_cmp.setup()5��            6      7               �      �      �    7                      �                     5�_�                    6   $    ����                                                                                                                                                                                                                                                                                                                                                 v       d		�     �   5   7   7      *local copilot_cmp = require("copilot_cmp")5��    5   $                 �                    5�_�                    6   $    ����                                                                                                                                                                                                                                                                                                                                                 v       d		�    �   7               �               7   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = true,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = true,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = false,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })       -- Set up copilot for cmp   *local copilot_cmp = require("copilot-cmp")   copilot_cmp.setup()5��            6      7               �      �      �    7                      �                     5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            7          5           v        d	
=     �   4              -- Set up copilot for cmp   *local copilot_cmp = require("copilot-cmp")   copilot_cmp.setup()5��    4                     f      X               5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            5          5           v        d	
>     �   4   5           5��    4                      f                     5�_�      	              4        ����                                                                                                                                                                                                                                                                                                                            5          5           v        d	
?     �   3   4           5��    3                      e                     5�_�      
           	   3        ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	
@    �   3               �               3   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = true,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = true,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = false,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            2      3               d      e      �    3                      e                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	
�     �         3          enabled = true,5��                        �                    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	
�     �         3          enabled = true,5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	
�    �   3               �               3   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = false,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            2      3               f      g      �    3                      g                     5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	q     �   .   0   3              ["."] = false,5��    .                    �                    5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	u     �   3               �               3   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = true,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            2      3               e      f      �    3                      f                     5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            4          4           v        d	�     �   0   7   5      F      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '�   1   2   5    �   /   2   4          �   0   1   4    �   0   1   4    �   0   1   4    �   0   1   4    �   /   1   3    5��    /                                    	       �    /                                         �    /                 F                 G       �    0   F                 a              k       5�_�                    6       ����                                                                                                                                                                                                                                                                                                                            ;          ;           v        d	�    �   :               �               :   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = true,           sh = function ()   U      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then   !        -- disable for .env files           return false   	      end         return true       end,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            9      :               0      ,      �    :                      ,                     5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            ;          ;           v        d	�     �   &   (   :    5��    &                      L                     �    &                     L                    5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	�     �   &   (   ;          5��    &                     P                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	�     �   &   (   ;          []5��    &                     Q                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	�     �   &   (   ;          [""]5��    &                     R                     �    &   	                  U                     5�_�                    7       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	�    �   ;               �               ;   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {       ["*"] = true       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = true,       sh = function()   U      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then   !        -- disable for .env files           return false   	      end         return true       end,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            :      ;               <      A      �    ;                      A                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	e     �   &   (   ;              ["*"] = true5��    &                     `                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	g    �   ;               �               ;   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {           ["*"] = true,       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,           ["."] = true,       sh = function()   U      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then   !        -- disable for .env files           return false   	      end         return true       end,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            :      ;               A      B      �    ;                      B                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                            <          <           v        d	j     �   .   0                  ["."] = true,�   0   1   <              ["."] = true,�   .   0   ;    5��   /              .                    �      �    .                     �                    5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            /          /           v        d	j     �   -   /              ["."] = true,�   /   0   <          ["."] = true,�   -   /   ;    5��   .              -       �             �      5�_�                    .       ����                                                                                                                                                                                                                                                                                                                            .          .           v        d	j     �   ,   .              ["."] = true,�   .   /   <          ["."] = true,�   ,   .   ;    5��   -              ,       �             �      5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -          -           v        d	j     �   +   -              ["."] = true,�   -   .   <          ["."] = true,�   +   -   ;    5��   ,              +       �             �      5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            ,          ,           v        d	k     �   *   ,              ["."] = true,�   ,   -   <          ["."] = true,�   *   ,   ;    5��   +              *       �             �      5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            +          +           v        d	k     �   )   +              ["."] = true,�   +   ,   <          ["."] = true,�   )   +   ;    5��   *              )       �             �      5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            *          *           v        d	k     �   (   *              ["."] = true,�   *   +   <          ["."] = true,�   (   *   ;    5��   )              (       �             t      5�_�                     )       ����                                                                                                                                                                                                                                                                                                                            )          )           v        d	k     �   '   )              ["."] = true,�   )   *   <          ["."] = true,�   '   )   ;    5��   (              '       t             b      5�_�                      (       ����                                                                                                                                                                                                                                                                                                                            (          (           v        d	m    �   ;               �               ;   4local status_ok, copilot = pcall(require, "copilot")       if not status_ok then     return   end       P-- Tell copilot to use older version of node 12.x-17.x (required as of Oct 2022)   Dvim.g.copilot_node_command = "~/.nvm/versions/node/v17.0.1/bin/node"       9-- None of this seems to be needed with the config below.   %-- vim.g.copilot_assume_mapped = true   "-- vim.g.copilot_tab_fallback = ""   "-- vim.g.copilot_no_tab_map = true       copilot.setup({     panel = {       enabled = false,       auto_refresh = false,       keymap = {         jump_prev = "[[",         jump_next = "]]",         accept = "<CR>",         refresh = "gr",         open = "<M-CR>"       },     },     suggestion = {       enabled = false,       auto_trigger = false,       debounce = 75,       keymap = {         accept = "<M-l>",         next = "<M-]>",         prev = "<M-[>",         dismiss = "<C-]>",       },     },     filetypes = {           ["*"] = true,       ["."] = true,       yaml = false,       markdown = false,       help = false,       gitcommit = false,       gitrebase = false,       hgcommit = false,       svn = false,       cvs = false,       sh = function()   U      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then   !        -- disable for .env files           return false   	      end         return true       end,     },   =  copilot_node_command = 'node', -- Node version must be < 18     server_opts_overrides = {},   })5��            :      ;               =      B      �    ;                      B                     5��