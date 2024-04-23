return {
	"smoka7/hop.nvim",
	opt = {
		multi_windows = true,
		keys = "htnsueoaidgcrlypmbkjvx",
		uppercase_labels = true,
	},
	keys = {
		{
			"<leader>hh",
			function()
				require("hop").hint_words()
			end,
			mode = { "n", "x", "o" },
		},
	},
	config = function()
		-- you can configure Hop the way you like here; see :h hop-config
		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		-- place this in one of your configuration file(s)
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("n", "<leader>hp", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set("n", "<leader>hq", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set("n", "<leader>hP", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
		end, { remap = true })
		vim.keymap.set("n", "<leader>hQ", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
		end, { remap = true })
	end,
}
