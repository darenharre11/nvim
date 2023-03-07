local status_ok, recorder = pcall(require, "recorder")

if not status_ok then
  return
end

recorder.setup()
