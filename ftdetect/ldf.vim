au BufReadPre,BufNewFile * if (&filetype == '' || &filetype == 'conf' || &filetype == 'text') | setl ft=ldf | endif
au BufEnter * if (&filetype == 'conf' || &filetype == 'text') | setl ft=ldf | endif
au BufEnter *.ldf setl ft=ldf
