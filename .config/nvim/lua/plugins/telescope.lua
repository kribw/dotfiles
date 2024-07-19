return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({ no_ignore = true })
		end, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search for string in current working dir" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "List open buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "List available help tags" })

		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Fuzzy search through git files" })
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })

			local harpoon = require("harpoon")
			harpoon:setup({})

			-- basic telescope configuration
			local conf = require("telescope.config").values
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers")
					.new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table({
							results = file_paths,
						}),
						previewer = conf.file_previewer({}),
						sorter = conf.generic_sorter({}),
					})
					:find()
			end

			vim.keymap.set("n", "<C-e>", function()
				toggle_telescope(harpoon:list())
			end, { desc = "Toggle harpoon window" })
		end, { desc = "Harpoon search" })
	end,
}
