return {
  -- Add the Nord theme plugin
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the Nord theme
      require('nord').set()

      -- Set background and terminal colors
      vim.cmd("set background=dark")
      vim.cmd("set termguicolors")

      -- Custom highlights
      vim.cmd("highlight Comment guifg=#616E88 gui=italic") -- Italic and lighter comments
      vim.cmd("highlight Function guifg=#88C0D0 gui=bold") -- Bold for function names
      vim.cmd("highlight Keyword guifg=#81A1C1 gui=bold,underline") -- Bold and underline for keywords
      vim.cmd("highlight String guifg=#A3BE8C gui=bold") -- Bold strings

      -- Sidebars and floating windows styling
      vim.cmd("highlight NormalFloat guibg=#3B4252")
      vim.cmd("highlight FloatBorder guifg=#81A1C1")
      vim.cmd("highlight NvimTreeNormal guibg=#2E3440")
      vim.cmd("highlight NvimTreeFolderIcon guifg=#81A1C1")

      -- Telescope styling
      vim.cmd("highlight TelescopeNormal guibg=#2E3440 guifg=#D8DEE9")
      vim.cmd("highlight TelescopeBorder guifg=#81A1C1")
    end
  },

  -- Lualine configuration to match Nord theme
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'shaunsingh/nord.nvim' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'nord',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
      })
    end
  },
}

