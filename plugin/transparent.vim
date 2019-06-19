" Vim global plugin for background transparent
" Maintainer: yuk1h1ra
" Licence: MIT License

if exists("g:loaded_transparent")
  finish
endif
let g:loaded_transparent = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:clear_background()
  execute 'highlight Normal ctermbg=NONE guibg=NONE'
  execute 'highlight LineNr ctermbg=NONE guibg=NONE'
  execute 'highlight SignColumn ctermbg=NONE guibg=NONE'
  execute 'highlight VertSplit ctermbg=NONE guibg=NONE'
  execute 'highlight NonText ctermbg=NONE guibg=NONE'
endfunction

augroup Transparent
  autocmd VimEnter * execute "call s:clear_background()"
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
