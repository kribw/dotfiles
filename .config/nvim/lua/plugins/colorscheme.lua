function SetColor()
	-- colorscheme catppuccin, catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
	-- color = color or "catppuccin"
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.cmd.colorscheme("catppuccin")
end

return { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = SetColor, lazy = false }
