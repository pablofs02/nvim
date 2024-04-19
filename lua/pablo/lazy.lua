local datos_lazy = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(datos_lazy) then
	vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", datos_lazy})
end
vim.opt.rtp:prepend(datos_lazy)

require('lazy').setup('pablo.paquetes', {
	lockfile = vim.fn.stdpath("data") .. "/lazy/lazy-lock.json",
	ui = {
		-- a number <1 is a percentage., >1 is a fixed size
		size = { width = 0.8, height = 0.8 },
		wrap = true, -- wrap the lines in the ui
		-- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
		border = "none",
		title = nil, ---@type string only works when border is not "none"
		title_pos = "center", ---@type "center" | "left" | "right"
		-- Show pills on top of the Lazy window
		pills = true, ---@type boolean
		icons = {
			cmd = "a",
			config = "b",
			event = "c",
			ft = "d",
			init = "e",
			import = "f",
			keys = "g",
			lazy = "h",
			loaded = "C",
			not_loaded = "E",
			plugin = "k",
			runtime = "l",
			require = "m",
			source = "n",
			start = "ñ",
			task = "o",
			list = {}
		}
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	}
})
