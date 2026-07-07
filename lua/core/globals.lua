Keymap = vim.keymap.set

-- Compatibility shim for plugins still using deprecated Neovim LSP APIs.
if vim.lsp and vim.lsp.get_clients then
	vim.lsp.buf_get_clients = function(bufnr)
		if bufnr == nil then
			return vim.lsp.get_clients()
		end

		return vim.lsp.get_clients({ bufnr = bufnr })
	end
end
