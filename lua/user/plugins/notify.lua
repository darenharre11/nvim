local status_ok, notify = pcall(require, "notify")

if not status_ok then
  return
end

-- Actually not sure this is required.
notify.setup({
  stages = "fade_in_slide_out",
  render = "compact",
  minimum_width = 10,
  timout = 1000,
  level = 2
})

--Sets nvim-notify as vim's default notify function
vim.notify = require("notify")
