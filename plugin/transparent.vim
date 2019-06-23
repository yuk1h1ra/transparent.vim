" Vim global plugin for background transparent
" Maintainer: yuk1h1ra
" Licence: MIT License

if exists("g:loaded_transparent")
  finish
endif
let g:loaded_transparent = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:highlight_group_bg_none(hi_group) abort
  execute 'highlight ' . a:hi_group . ' ctermbg=NONE guibg=NONE'
endfunction

function! s:clear_background() abort
  call s:highlight_group_bg_none('Normal')
  call s:highlight_group_bg_none('LineNr')
  call s:highlight_group_bg_none('CursorLine')
  call s:highlight_group_bg_none('SignColumn')
  call s:highlight_group_bg_none('VertSplit')
  call s:highlight_group_bg_none('NonText')
endfunction

augroup TransparentBG
  if get(g:, 'transparentBG_always_enable', 1)
    autocmd ColorScheme * execute "call s:clear_background()"
    autocmd VimEnter * execute "call s:clear_background()"
  endif
augroup END

command! TransparentBGEnable call s:clear_background()

let &cpo = s:save_cpo
unlet s:save_cpo
