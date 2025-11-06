require("config.lazy")
require("config.set")
vim.cmd([[colorscheme gruvbox]])

vim.lsp.config("*", {
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			},
		},
	},
	root_markers = { ".git" },
})
vim.filetype.add({
	extension = {
		jinja = "jinja",
		jinja2 = "jinja",
		j2 = "jinja",
	},
})

vim.diagnostic.config({ virtual_text = true, virtual_Lines = { current_line = true } })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		-- if client:supports_method("textDocument/completion") then
		-- 	vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		-- end
		--
		--
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
		vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
		vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
		vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")
		vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
		vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
		vim.keymap.set("n", "<leader>ih", function()
			if client:supports_method("textDocument/inlayHint") then
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end
		end)
	end,
})

vim.lsp.enable({ "ts_ls", "luals", "gopls", "jinja", "pyright" })
