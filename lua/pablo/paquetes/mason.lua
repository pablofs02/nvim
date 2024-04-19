return {
	'williamboman/mason.nvim',
	event = 'BufNewFile',
	ft = {'rust', 'c', 'lua', 'cpp', 'html', 'typescriptreact', 'javascriptreact', 'css', 'javascript', 'typescript', 'python', 'java'},
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim'
	},
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')

		mason.setup({
			ui = {
				icons = {
					package_installed = '✓',
					package_pending = '➜',
					package_uninstalled = '✗',
				}
			}
		})

		mason_lspconfig.setup({
			ensure_installed = {
				'rust_analyzer',
				'clangd',
				'html',
				'cssls',
				'tsserver',
				'lua_ls',
				'emmet_ls',
				'pyright',
				'jdtls',
			},
			automatic_installation = true
		})

		mason_tool_installer.setup({
			ensure_installed = {
				'rust_analyzer',
			},
			auto_update = true
		})
	end
}
