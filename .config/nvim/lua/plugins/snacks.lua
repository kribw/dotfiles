local snacks = require("snacks")

-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      replace_netrw = true,
    },
    picker = {
      sources = {
        explorer = {
          --- @type snacks.picker.explorer.Config
          win = {
            list = {
              keys = {
                ["."] = "set_cwd",
              },
            },
          },
          actions = {
            set_cwd = function(picker, item)
              if not item or not item.file then
                vim.notify("Item or file missing, returning...", vim.log.levels.WARN)
                return
              end

              if vim.fn.isdirectory(item.file) ~= 1 then
                vim.notify(item.file .. " is not a directory!", vim.log.levels.WARN)
                return
              end

              vim.api.nvim_set_current_dir(item.file)
              vim.notify("Set cwd: " .. item.file, vim.log.levels.INFO)
            end,
          },
        },
      },
    },
  },
}
