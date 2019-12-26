let g:Tex_AdvancedMath = 1
let g:tex_flavor='latex'
let g:Tex_Leader = ';'

" imap ;j <Plug>IMAP_JumpForward
" nmap ;j <Plug>IMAP_JumpForward


let g:Tex_Com_ll = "\\label{<++>}<++>"
let g:Tex_Env_ppp = "\\begin{align*}\<CR><++>\<CR>\\end{align*}<++>"
let g:Tex_Env_mult = "\\begin{multlined}[t]\<CR><++>\<CR>\\end{multlined}<++>"


" compile the tex file with the following method
" view pdf by Skim
let g:Tex_MultipleCompileFormats='pdf,bib,pdf,pdf'
"let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_ViewRule_pdf = 'Skim'
let g:tex_flavor='latex'
let g:vimtex_quickfix_open_on_warning = 0
let g:TCLevel = 1
"let g:Tex_CompileRule_pdf='pdflatex $*'


let g:Tex_PackagesMenu=0
let g:Tex_NestElementMenus=0
" let g:Tex_UseUtfMenus=0
" 
let g:Tex_Menus=0
let g:Tex_package_detected = ''
let g:Tex_SmartKeyDot=1

set iskeyword+=\-
let g:Tex_EnvEndWithCR=0
let g:Tex_EnvLabelprefix_equation = "eq:"
let g:Tex_EnvLabelprefix_equ = "eq:"
let g:Tex_EnvLabelprefix_align = "eq:"
let g:Tex_EnvLabelprefix_theorem = "thm:"
let g:Tex_EnvLabelprefix_lemma = "lem:"
let g:Tex_EnvLabelprefix_figure = "fig:"
let g:Tex_EnvLabelprefix_table = "tab:"
let g:Tex_EnvLabelprefix_definition = "def:"
let g:Tex_EnvLabelprefix_proposition = "pro:"
let g:Tex_EnvLabelprefix_corollary = "cor:"
let g:Tex_EnvLabelprefix_assumption = "ass:"
let g:Tex_EnvLabelprefix_remark = "rem:"
let g:Tex_LabelAfterContent=1
let g:Tex_GotoError=0

let g:Imap_PlaceHolderStart = '{{~'
let g:Imap_PlaceHolderEnd = '~}}'

let g:Imap_UsePlaceHolders = 0 

let g:matchup_override_vimtex = 1
let g:vimtex_quickfix_mode = 0

"let g:tex_conceal="abdgm"

let Tex_FoldedEnvironments = ",proof,theorem,condition,lemma,mybox,remark"
let Tex_PromptedEnvironments='equation,equation*,align,align*,enumerate,itemize,figure,table,mult'
let g:Tex_HotKeyMappings='mult,eqaution'
let Tex_Folding=0
let Tex_LabelAfterContent=0

