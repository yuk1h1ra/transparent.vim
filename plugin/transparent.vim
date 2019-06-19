" Vim global plugin for background transparent
" Maintainer: yuk1h1ra
" Licence: MIT License

if exists("g:loaded_transparent")
  finish
endif
let g:loaded_transparent = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:highlight_set_none(hi_group)
  execute 'highlight ' . a:hi_group . ' ctermbg=NONE guibg=NONE'
endfunction

function! s:clear_background()
  call s:highlight_set_none('Normal')
  call s:highlight_set_none('LineNr')
  call s:highlight_set_none('SignColumn')
  call s:highlight_set_none('VertSplit')
  call s:highlight_set_none('NonText')
endfunction

augroup Transparent
  autocmd ColorScheme * execute "call s:clear_background()"
  autocmd VimEnter * execute "call s:clear_background()"
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
