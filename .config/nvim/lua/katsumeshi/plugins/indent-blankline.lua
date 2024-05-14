return { 
  "lukas-reineke/indent-blankline.nvim", 
  main = "ibl",
   config = function ()
     local l = require('ibl')
     local hooks = require("ibl.hooks")
     local scope = "focus"

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "focus", { fg = "#84b580" })
      end)
     l.setup({
        scope = { highlight = scope },
      })
   end
}
