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

if !exists('g:scroll_off_absolute_filetypes')
  let g:scroll_off_absolute_filetypes = ['qf']
end

if !exists('g:scroll_off_absolute_value')
  let g:scroll_off_absolute_value = 0
end

function! ScrollOffFraction(fraction)
  if index(g:scroll_off_absolute_filetypes, &filetype) == -1
    let l:visible_lines_in_active_window = winheight(win_getid())
    let &scrolloff = float2nr(l:visible_lines_in_active_window * a:fraction)
  else
    let &scrolloff = g:scroll_off_absolute_value
  endif
endfunction

augroup ScrollOffFraction
  autocmd!
  autocmd BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ call ScrollOffFraction(g:scroll_off_fraction)
augroup END
