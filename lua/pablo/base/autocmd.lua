local au = vim.api.nvim_create_autocmd
au('BufReadPost', {command='silent! normal! g`"zz'})
au('BufWritePost', {pattern = 'DOCTRINA', command = '!readme %:p:h'})
au('BufWritePost', {pattern = 'sxhkdrc', command = '!actualizar_atajos'})
au('BufWritePost', {pattern = 'config.h', command = '!sudo make install'})
au('BufWritePost', {pattern = 'Xresources', command = '!xrdb -load %:p'})
