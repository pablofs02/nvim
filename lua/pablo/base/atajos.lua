vim.g.mapleader = ' '
function At(m, t, f)
	vim.keymap.set(m, t, f, {noremap=true})
end

At('n', '<Leader>fa', vim.cmd.Ex)

At('n', 'j', 'gj')
At('n', 'k', 'gk')
At('n', '<C-j>', 'j')
At('n', '<C-k>', 'k')

At('n', '<Leader><F9>', ':!ldf web<CR><CR>')
At('n', '<Leader><F10>', ':!servus l&<CR><CR>:!servidor_local&<CR><CR>')

At('n', 'gd', 'gdzz')

At('n', 'ci|', 'F|lvf|hs')

At('n', '<Leader><F1>', '<CMD>lua Apuntes()<CR><CR>')
At('n', '<F1>', '<CMD>lua Doctrina()<CR><CR>')

At('n', 'ñ', vim.cmd.w)
At('n', 'Ñ', ':lua Formatear()<CR>')
At('n', '<F4>', ':lua Comprobar()<CR>')
At('n', '<F5>', ':lua Ejecutar()<CR>')
At('n', '<F6>', ':lua Compilar()<CR>')
At('n', '<F7>', ':lua Testear()<CR>')
At('n', '<F8>', ':lua Limpiar()<CR>')

At('n', '<C-q>', ':q!<CR>')
At({'n', 'i', 'v'}, '<C-x>', vim.cmd.x)
At('n', '<Leader>e', vim.cmd.e)
At('n', '<Leader>s', ':%s/')
At('v', '<Leader>s', ':s/')

-- at('i', '<C-j>', '\\x1b[')

-- Ventanas
At('n', '<C-m>', '<C-w><')
At('n', '<C-n>', '<C-w><')
At('n', '<C-h>', '<C-w>h')
At('n', '<C-l>', '<C-w>l')

At('n', '<Leader>fj', ':%!jq . --tab<CR>')
At('n', '<Leader>fe', ':%s/\\n\\s*/<CR>')
At('n', '<Leader>qe', ':%s/[ \\t\\n]//g<CR>')

At('n', 'º', ':set wrap!<CR>')

-- Quitar espacios finales
At('n', '<Leader>t', '<Cmd>%s/\\s*$<Cr>')

-- Añadir cierre
At('i', '(', '()<Left>')
At('i', '[', '[]<Left>')
At('i', '[<Space>', '[  ]<Left><Left>')
At('i', '{', '{}<Left>')
At('i', '{<CR>', '{}<Left><CR><Esc>O')
At('i', '"', '""<Left>')
At('i', '¡', '¡!<Left>')
At('i', '¿', '¿?<Left>')

-- Insertar entre signos
At('v', '<Leader>(', 's()<Esc>P')
At('v', '<Leader>[', 's[]<Esc>P')
At('v', '<Leader>{', 's{}<Esc>P')
At('v', '<Leader>"', 's""<Esc>P')
At('v', "<Leader>'", "s''<Esc>P")
At('v', '<Leader>¡', 's¡!<Esc>P')
At('v', '<Leader>¿', 's¿?<Esc>P')

-- Cambiar palabra
At('n', '<C-s>', '"_ciw')


-- Abrir terminal
At('n', '<Leader>t', vim.cmd.term)

-- Útiles
At('n', '<Leader>v', ':!sxiv -bs f % &<CR><CR>')

-- Mover líneas
At('n', '<A-j>', "V:m '>+1<CR>gv=gv<Esc>")
At('n', '<A-k>', "V:m '<-2<CR>gv=gv<Esc>")
At('v', '<A-j>', ":m '>+1<CR>gv=gv")
At('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Ajustes de navegación
At('n', '<C-d>', '<C-d>zz')
At('n', '<C-u>', '<C-u>zz')

-- Mejoras de vida
At('n', 'J', 'mzJ`z')

At('x', '<Leader>p', '"_dP')
At({'n', 'v'}, '<Leader>y', '"+y')
At('n', '<Leader>Y', '"+Y')
At({'n', 'v'}, '<Leader>d', '"_d')

At('n', '<Leader>x', '<cmd>!chmod +x %<CR>')
