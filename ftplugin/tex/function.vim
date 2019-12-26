function! AddOne()
    let prenew = input("Input the prefix: ")
    let numb = input("Input the number: ")
    "exec ':s/' . l:prenew . '\zs\d\+\ze/\=printf("%02d", submatch(0)+1)/gc' 
    " let [line_start, column_start] = getpos("'<")[1:2]
    " let [line_end, column_end] = getpos("'>")[1:2]
    " let lines = getline(line_start, line_end)
    " let l:mystr = a:str . '\zs\d\+\ze'
    let l:mystr = l:prenew . '\zs\d\+\ze'
    " let l:valn = a:val
    let l:valn = l:numb
    " let l = line_start 
    "for l:line in getline(line_start, line_end)
    "    "lines
    "    call setline(l, substitute(l:line, l:mystr , '\=printf("%02d", submatch(0)+1)', "g"  ))
    "    echo l 
    "    let l = l + 1
    "endfor 
    for l:line in range(1,line("$"))
        call setline(l:line, substitute(getline(l:line), l:mystr , '\=printf("%02d", ChoosePlusOneOrNot(submatch(0),' . l:valn . '))', "gc"  ))
    endfor 
endfunction

function! ChoosePlusOneOrNot(number, value)
    if a:number > a:value
        return a:number + 1
    else 
        return a:number
    endif 
endfunction



" Tex_Mathbb: 
function! Tex_Mathbb()
    return "\<Left>\\mathbb{\<Right>}"
endfunction
imap <A-x> <C-r>=Tex_Mathbb()<CR>


" Tex_MathHat: encloses the previous letter in \hat{} {{{
function! Tex_MathHat()
    return "\<Left>\\hat{\<Right>}"
endfunction 
" }}}

" Tex_MathBar: encloses the previous letter in \bar{} {{{
function! Tex_MathBar()
    return "\<Left>\\bar{\<Right>}"
endfunction 
" }}}

" Tex_MathTilde: encloses the previous letter in \tilde{} {{{
function! Tex_MathTilde()
    return "\<Left>\\tilde{\<Right>}"
endfunction 
" }}}


" Tex_MathBF: encloses te previous letter/number in \mathbf{} {{{
" Description: 
function! Tex_MathBF()
	return "\<Left>\\mathbf{\<Right>}"
endfunction " }}}
" Tex_MathCal: enclose the previous letter/number in \mathcal {{{
" Description:
" 	if the last character is not a letter/number, then insert \cite{}
function! Tex_MathCal()
	return "\<Left>\\mathcal{\<Right>}"
endfunction


function! InsertMiddleVert()
	let [l:open, l:close] = vimtex#delim#get_surrounding('delim_all')
	if empty(l:open) | return | endif 

	let l:midfull = matchstr(open.match,'\\\w\+')
	let l:mid = strpart(l:midfull,0,len(l:midfull)-1)
	return empty(l:mid) ? '\vert' : l:mid . 'm\vert'
endfunction 

imap <A-m> <c-r>=InsertMiddleVert()<cr>

