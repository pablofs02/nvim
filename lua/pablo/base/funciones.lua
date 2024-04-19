-- function! FormatearPliegue()
--     let linea = getline(v:foldstart)
--     let num_lineas = v:foldend - v:foldstart - 1
--     let longitud = strlen(substitute(linea . num_lineas, '.', 'x', 'g'))
--     retu linea . repeat('·', winwidth(0) - longitud - 5) . num_lineas . 'l'
-- endf
-- set foldtext=FormatearPliegue()

function Clr(nombre, color)
	vim.api.nvim_set_hl(0, nombre, color)
end

function Formatear()
	vim.cmd('wa')
	local tipo = vim.bo.filetype
	local arch = vim.fn.expand('%')
	if tipo == "ldf" then
		local comando = 'silent! !ldffmt ' .. arch
		vim.cmd(comando)
	elseif tipo == "rust" then
		local comando = 'silent! !rustfmt ' .. arch
		vim.cmd(comando)
	end
end

function Comprobar()
	vim.cmd('wa')
	local comando
	local tipo = vim.bo.filetype
	if tipo == "rust" then
		comando = '!cargo c'
	end
	vim.cmd(comando)
end

function Ejecutar()
	vim.cmd('wa')
	local comando
	local tipo = vim.bo.filetype
	local arch = vim.fn.expand('%')
	if tipo == "rust" then
		comando = '!cargo r'
	elseif tipo == "python" then
		comando = '!python ' .. arch
	elseif tipo == "sh" then
		comando = '!./' .. arch
	elseif tipo == "c" then
		comando = '!gcc ' .. arch .. ' -lm -o exe && ./exe && rm ./exe'
	elseif tipo == "java" then
		comando = '!jjj'
	else
		comando = 'echo "Ejecución para tipo de archivo no implementado"'
	end
	vim.cmd(comando)
end

function Compilar()
	vim.cmd('wa')
	local comando
	local tipo = vim.bo.filetype
	if tipo == "rust" then
		comando = '!inst'
	elseif tipo == "c" then
		comando = '!sudo make install'
	elseif tipo == "java" then
		comando = '!mvn compile install'
	else
		comando = 'echo "Compilación para tipo de archivo no implementado"'
	end
	vim.cmd(comando)
end

function Testear()
	vim.cmd('wa')
	local comando
	local tipo = vim.bo.filetype
	if tipo == "rust" then
		comando = '!cargo t'
	else
		comando = 'echo "Testeo para tipo de archivo no implementado"'
	end
	vim.cmd(comando)
end

function Limpiar()
	vim.cmd('wa')
	local comando
	local tipo = vim.bo.filetype
	if tipo == 'rust' then
		comando = '!cargo c'
	elseif tipo == 'c' or tipo == 'cpp' then
		comando = '!rm *.o exe 2>/dev/null'
	else
		comando = 'echo "Limpieza para tipo de archivo no implementado"'
	end
	vim.cmd(comando)
end

function Abrir_en_ventana(archivo, nombre)
	local opts = {
		title = ' [ ' .. nombre .. ' ] ',
		title_pos = 'center',
		relative = 'editor',
		width = math.floor(vim.o.columns * 0.8),
		height = math.floor(vim.o.lines * 0.8),
		row = math.floor(vim.o.lines * 0.1),
		col = math.floor(vim.o.columns * 0.1),
		style = 'minimal',
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
	}
	local bufnr = vim.fn.bufadd(archivo)
	vim.api.nvim_open_win(bufnr, true, opts)
end

function Apuntes()
	local archivo = '/home/pablo/.archivos/Notas/apuntes'
	Abrir_en_ventana(archivo, 'APUNTES')
end

function Doctrina()
	local archivo = './DOCTRINA'
	Abrir_en_ventana(archivo, 'DOCTRINA')
end
