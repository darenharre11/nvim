Vim�UnDo� ,j��X�	�0SEѩ5�J�s�g���^C��{�                                     d	$    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d	$     �                       �             �             �               ]        trigger = true, -- Automatically show signature help when typing a trigger character �             �                 �             �                 �             �             �             �             5��                                               �                                              �                        &                     �                     ]   -              �       �       ]                 �                     �                      /   �              /       �       7                               p       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d	$     �                     },5��                         ~                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d	$     �               	  lsp = {   W    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**       override = {   B          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   3          ["vim.lsp.util.stylize_markdown"] = true,   1          ["cmp.entry.get_documentation"] = true,       },     },   5  -- you can enable a preset for easier configuration     presets = {   L    bottom_search = false,        -- use a classic bottom cmdline for search   P    command_palette = false,      -- position the cmdline and popupmenu together   J    long_message_to_split = true, -- long messages will be sent to a split   P    inc_rename = false,           -- enables an input dialog for inc-rename.nvim   R    lsp_doc_border = false,       -- add a border to hover docs and signature help     },         signature = {         enabled = true,         auto_open = {           enabled = true,   i        trigger = true, -- Automatically show signature help when typing a trigger character from the LSP   X        luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes   E        throttle = 50, -- Debounce lsp signature help request by 50ms   	      },}5��              	                f      �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d	$     �                  �                  require("noice").setup({   	lsp = {   U		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**   		override = {   ;			["vim.lsp.util.convert_input_to_markdown_lines"] = true,   ,			["vim.lsp.util.stylize_markdown"] = true,   *			["cmp.entry.get_documentation"] = true,   		},   	},   4	-- you can enable a preset for easier configuration   	presets = {   C		bottom_search = false, -- use a classic bottom cmdline for search   I		command_palette = false, -- position the cmdline and popupmenu together   H		long_message_to_split = true, -- long messages will be sent to a split   D		inc_rename = false, -- enables an input dialog for inc-rename.nvim   J		lsp_doc_border = false, -- add a border to hover docs and signature help   	},   	signature = {   		enabled = true,   		auto_open = {   			enabled = true,   d			trigger = true, -- Automatically show signature help when typing a trigger character from the LSP   S			luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes   @			throttle = 50, -- Debounce lsp signature help request by 50ms   		},   	},   })5��                                       m      �                          m                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d	$     �               	  lsp = {   W    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**       override = {   B          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   3          ["vim.lsp.util.stylize_markdown"] = true,   1          ["cmp.entry.get_documentation"] = true,       },     },   5  -- you can enable a preset for easier configuration     presets = {   J    bottom_search = false,      -- use a classic bottom cmdline for search   N    command_palette = false,    -- position the cmdline and popupmenu together   J    long_message_to_split = true, -- long messages will be sent to a split   N    inc_rename = false,         -- enables an input dialog for inc-rename.nvim   P    lsp_doc_border = false,     -- add a border to hover docs and signature help     },     signature = {       enabled = true,       auto_open = {         enabled = true,   g      trigger = true, -- Automatically show signature help when typing a trigger character from the LSP   V      luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes   C      throttle = 50, -- Debounce lsp signature help request by 50ms       },     },5��                              N      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d	$    �                  �                  require("noice").setup({   	lsp = {   U		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**   		override = {   ;			["vim.lsp.util.convert_input_to_markdown_lines"] = true,   ,			["vim.lsp.util.stylize_markdown"] = true,   *			["cmp.entry.get_documentation"] = true,   		},   	},   4	-- you can enable a preset for easier configuration   	presets = {   C		bottom_search = false, -- use a classic bottom cmdline for search   I		command_palette = false, -- position the cmdline and popupmenu together   H		long_message_to_split = true, -- long messages will be sent to a split   D		inc_rename = false, -- enables an input dialog for inc-rename.nvim   J		lsp_doc_border = false, -- add a border to hover docs and signature help   	},   	signature = {   		enabled = true,   		auto_open = {   			enabled = true,   d			trigger = true, -- Automatically show signature help when typing a trigger character from the LSP   S			luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes   @			throttle = 50, -- Debounce lsp signature help request by 50ms   		},   	},   })5��                                       m      �                          m                     5��