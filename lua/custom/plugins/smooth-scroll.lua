return {
  "karb94/neoscroll.nvim",
  config = function()
    require('neoscroll').setup {
      easing_function = "sine",
      hide_cursor = true,
      cursor_scrolls_alone = true,
    }
  end
}
