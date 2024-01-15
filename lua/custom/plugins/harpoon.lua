return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup()
    local function map(lhs, rhs, opts)
      vim.keymap.set("n", lhs, rhs, opts or {})
    end
    map("<leader>ha", function() harpoon:list():append() end, { desc = "%[H]arpoon %[A]dd to list" })
    map("<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    map("<leader>1", function() harpoon:list():select(1) end, { desc = "Move to harpoon 1st buffer" })
    map("<leader>2", function() harpoon:list():select(2) end, { desc = "Move to harpoon 2nd buffer" })
    map("<leader>3", function() harpoon:list():select(3) end, { desc = "Move to harpoon 3rd buffer" })
    map("<leader>4", function() harpoon:list():select(4) end, { desc = "Move to harpoon 4th buffer" })
  end
}
