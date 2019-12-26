"设置latex suite 
"
set shellslash
set winaltkeys=no
" set macmeta
set wrap
set selection=inclusive
behave xterm
set spell
set textwidth=300
" set guifont=Monaco:h10
set conceallevel=0
set foldmethod=manual  " could be marker... 

" let g:tex_fold_enabled=0
let g:vimtex_fold_enabled=1
let b:current_syntax=''

" Auto save file 
set updatetime=1000
"autocmd CursorHold *.tex silent call Tex_AutoFile()
autocmd CursorHold *.tex silent write
"autocmd CursorHoldI *.tex silent write


" Set colorscheme
" let g:solarized_contrast="high"    "default value is normal
" set background=dark
" colorscheme mylatexcolor



