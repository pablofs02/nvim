function Modo()
	local modo = vim.api.nvim_get_mode().mode
	local modos = {
		['n'] =  '%#VE#',
		['i'] =  '%#AZ#',
		['v'] =  '%#AM#',
		['V'] =  '%#AM#',
		[''] = '%#AM#',
		['s'] =  '%#AM#',
		['c'] =  '%#CI#',
		['R'] =  '%#RO#'
		-- ['n'] =  '%#VE# NORMAL %##',
		-- ['i'] =  '%#AZ# INSERT %##',
		-- ['v'] =  '%#AM# VISUAL %##',
		-- ['V'] =  '%#AM# VLINEA %##',
		-- [''] = '%#AM# BLOQUE %##',
		-- ['s'] =  '%#AM# SELECT %##',
		-- ['c'] =  '%#CI# COMAND %##',
		-- ['R'] =  '%#RO# REMPLA %##'
	}
	return modos[modo]
end

vim.opt.statusline='%{%luaeval("Modo()")%}%a %f %S%h%w%m%r %=%(%l,%v %= %P%) '
