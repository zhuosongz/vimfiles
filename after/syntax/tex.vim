call TexNewMathZone("E","align",1)
call TexNewMathZone("E","gather",1)
call TexNewMathZone("E","equ",1)

if !exists("g:tex_nospell") || !g:tex_nospell
   syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\|label\)\s*{'	end='}'	contains=@texFoldGroup,@Spell
  else
   syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\|label\)\s*{'	end='}'	contains=@texFoldGroup
  endif

match ErrorMsg '\%>500v.\+'
