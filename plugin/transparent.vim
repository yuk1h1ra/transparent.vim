" Vim global plugin for background transparent
" Maintainer: yuk1h1ra
" Licence: MIT License

if exists("g:loaded_transparent")
  finish
endif
let g:loaded_transparent = 1

let s:save_cpo = &cpo
set cpo&vim

augroup TransparentSetBGNONE
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight LineNr ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight SignColumn ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight VertSplit ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight NonText ctermbg=NONE guibg=NONE
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
