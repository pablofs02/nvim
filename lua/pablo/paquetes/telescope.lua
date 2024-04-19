return {
	'nvim-telescope/telescope.nvim',
	event = 'BufNewFile',
	ft = {'rust', 'c', 'lua', 'cpp', "html", "typescriptreact", "javascriptreact", "css", 'javascript', 'typescript', 'python', 'java'},
	keys = {'<C-p>', '<Leader>ff', '<Leader>fg', '<Leader>fb', '<Leader>fh', '<Leader>fd', '<Leader>fn', '<Leader>fc', '<Leader>fv'},
	config = function()
		local previewers = require("telescope.previewers")
		local putils = require("telescope.previewers.utils")
		local pfiletype = require("plenary.filetype")
		local new_maker = function(ruta, buf, opt)
			opt = opt or {}
			local tipo = pfiletype.detect(ruta)
			if tipo == '' then
				tipo = 'ldf'
			end
			putils.regex_highlighter(buf, tipo)
			previewers.buffer_previewer_maker(ruta, buf, opt)
		end
		require('telescope').setup {
			defaults = {
				layout_config = {
					preview_width = 0.5,
				},
				buffer_previewer_maker = new_maker,
				preview = {
					filesize_limit = 0.4, -- MB
				},
				file_ignore_patterns = {
					'target',
					'node_modules'
				},
				mappings = {
					i = {
						["<C-q>"] = require('telescope.actions').close,
					},
					n = {
						["<C-q>"] = require('telescope.actions').close
					}
				}
			}
		}
		local function notas()
			require('telescope.builtin').find_files {
				cwd = '~/.archivos/Notas/'
			}
		end
		local function config()
			require('telescope.builtin').find_files {
				cwd = '~/.config/',
				file_ignore_patterns = {'discord'},
				hidden = true
			}
		end
		local function config_vim()
			require('telescope.builtin').find_files {
				cwd = '~/.config/nvim/'
			}
		end
		vim.keymap.set('n', '<C-p>', '<Cmd>Telescope find_files<Cr>')
		vim.keymap.set('n', '<Leader>ff', '<Cmd>Telescope find_files<Cr>')
		vim.keymap.set('n', '<Leader>fg', '<Cmd>Telescope live_grep<Cr>')
		vim.keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<Cr>')
		vim.keymap.set('n', '<Leader>fh', '<Cmd>Telescope help_tags<Cr>')
		vim.keymap.set('n', '<Leader>fd', '<Cmd>Telescope git_commits<Cr>')
		vim.keymap.set('n', '<Leader>fn', notas)
		vim.keymap.set('n', '<Leader>fc', config)
		vim.keymap.set('n', '<Leader>fv', config_vim)
	end,
	dependencies = {{'nvim-lua/plenary.nvim'}}
}
