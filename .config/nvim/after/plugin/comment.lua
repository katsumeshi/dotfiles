local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

require('Comment').setup()
