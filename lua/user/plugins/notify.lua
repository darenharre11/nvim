local status_ok, notify = pcall(require, "notify")

if not status_ok then
	return
end

-- Actually not sure this is required.
notify.setup({})

--Sets nvim-notify as vim's default notify function
vim.notify = require("notify")
