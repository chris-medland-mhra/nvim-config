require("mini.ai").setup()
require("mini.operators").setup()
require("mini.surround").setup()
require("mini.diff").setup()
require("mini.cursorword").setup()
require("mini.bracketed").setup({
	buffer = { suffix = "b", options = {} },
	comment = { suffix = "c", options = {} },
	conflict = { suffix = "x", options = {} },
	diagnostic = { suffix = "", options = {} },
	file = { suffix = "f", options = {} },
	indent = { suffix = "i", options = {} },
	jump = { suffix = "j", options = {} },
	location = { suffix = "l", options = {} },
	oldfile = { suffix = "o", options = {} },
	quickfix = { suffix = "q", options = {} },
	treesitter = { suffix = "", options = {} },
	undo = { suffix = "u", options = {} },
	window = { suffix = "w", options = {} },
	yank = { suffix = "y", options = {} },
})
require("mini.pairs").setup()
require("mini.move").setup()
require("mini.comment").setup()
