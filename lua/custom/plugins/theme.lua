-- return


return {
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 0,   -- change to 1000 when enable
    enable = false, -- change to true to enable
    config = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end
  }
}
