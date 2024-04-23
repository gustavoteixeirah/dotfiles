return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "horizontal",
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<M-j>]],
		})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>\\",
			"<cmd>ToggleTerm direction=float<CR>",
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap("n", "<leader>/", "<cmd>ToggleTermToggleAll<CR>", { noremap = true, silent = true })
	end,
}
