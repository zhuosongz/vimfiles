inoremap <F6> <C-R>=strftime("%d/%m/%y %H:%M:%S")<CR>

au VimEnter *.md  set ft=markdown
au VimEnter *.md  set syntax=tex
" au VimEnter * md  normal UltiSnipsAddFiletypes tex 

let b:AutoPairs = {}

set updatetime=2000
"autocmd CursorHold *.tex silent call Tex_AutoFile()
autocmd CursorHold *.markdown silent write
autocmd CursorHoldI *.markdown silent write
autocmd CursorHold *.md silent write
autocmd CursorHoldI *.md silent write

"au BufWritePost *.markdown silent call Vim_Markdown_Preview() 
"au BufWritePost *.md silent call Vim_Markdown_Preview() 
"

