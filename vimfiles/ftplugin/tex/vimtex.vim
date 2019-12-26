let g:vimtex_delim_toggle_mod_list = [
      \ ['\bigl', '\bigr'],
      \ ['\Bigl', '\Bigr'],
      \ ['\biggl', '\biggr'],
      \ ['\Biggl', '\Biggr'],
      \]


let g:vimtex_quickfix_mode=1
set foldmethod=manual
let g:vimtex_fold_manual=1

" let g:vimtex_view_method='skim'
" if  has("win32")
" 	let g:vimtex_view_method='sumatrapdf'
" endif

let g:vimtex_compiler_latexmk = {
        \ 'executable' : 'pdflatex',
        \}
let g:vimtex_compiler_latexmk_engines = {
        \ '_'                : '-pdf',
        \ 'pdflatex'         : '-pdf',
        \ 'dvipdfex'         : '-pdfdvi',
        \ 'lualatex'         : '-lualatex',
        \ 'xelatex'          : '-xelatex',
        \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
        \ 'context (luatex)' : '-pdf -pdflatex=context',
        \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
        \}

let g:vimtex_imaps_leader=';'
let g:vimtex_indent_ignored_envs = ['document', 'proof']

let g:vimtex_view_general_viewer = "SumatraPDF"
" let g:vimtex_view_general_options = '@pdf'
" let g:vimtex_view_general_options_latexmk = '-r'



"syntax on 
