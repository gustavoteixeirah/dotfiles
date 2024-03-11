return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"javascript",
					"html",
					"java",
					"go",
					"rust",
					"python",
					"templ",
				},
				sync_install = false,
				highlight = { enable = true, additional_vim_regex_highlighting = false },
				indent = { enable = true },
			})
			vim.filetype.add({
				extension = {
					templ = "templ",
				},
			})
		end,
	},
}
