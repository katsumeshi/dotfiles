return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local t = require("nvim-treesitter.configs")

    t.setup({
      ensure_installed = { 
        "lua",
        "vim", 
        "vimdoc", 
        "tsx",
        "typescript",
        "javascript",
        "json",
        "markdown",
        "gitignore",
        "yaml",
        "go",
        "html"
      },
      -- sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}
