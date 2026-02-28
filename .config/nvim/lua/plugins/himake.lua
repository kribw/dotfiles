return {
  dir = "~/Code/lua/himake.nvim", -- Path to your plugin
  dependencies = {
    'folke/snacks.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('himake').setup({
      keybind = '<leader>hp',
    })
  end
}
