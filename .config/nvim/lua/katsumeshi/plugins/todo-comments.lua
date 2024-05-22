return {
 "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    local k = vim.keymap

    k.set("n", "<leader>tn", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    k.set("n", "<leader>tp", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })

    todo_comments.setup()
  end,
}
