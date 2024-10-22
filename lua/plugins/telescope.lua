return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root Dir)" },
		{ "<leader>pg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>ps", "<cmd>Telescope grep_string<cr>", desc = "Grep string under cursor" },
		{ "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Search git files (git ls-files)" },
	},
	dependencies = { "nvim-lua/plenary.nvim" },
}
