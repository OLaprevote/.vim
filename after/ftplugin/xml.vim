" $VIMRUNTIME/after/ftplugin/xml.vim
" Turn on auto-indentation
   
setlocal autoindent
   
" Let's use a 4-character indent
   
setlocal shiftwidth=4
   
" With smarttab set, we can press tab at the beginning
" of a line and get shiftwidth indent even though
" tabstop is something else (e.g. the default 8)
   
setlocal smarttab
   
" A lot of XML looks really bad and gets really confusing if
" screen-wrapped. I prefer to turn off wrapping.
   
setlocal nowrap
