scriptencoding utf-8

" vim-scroll-off-fraction
" Author: Sheldon Johnson
" Version: 0.1

if exists('g:loaded_scroll_off_fraction') || &compatible
  finish
endif

let g:loaded_scroll_off_fraction = 1

if !exists('g:scroll_off_fraction')
  let g:scroll_off_fraction = 0.25
end

function! ScrollOffFraction(fraction)
  let l:visible_lines_in_active_window = winheight(win_getid())
  let &scrolloff = float2nr(l:visible_lines_in_active_window * a:fraction)
endfunction

augroup ScrollOffFraction
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ call ScrollOffFraction(g:scroll_off_fraction)
augroup END
