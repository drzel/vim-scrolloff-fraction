scriptencoding utf-8

" vim-scrolloff-fraction
" Author: Sheldon Johnson
" Version: 0.2

if exists('g:loaded_scrolloff_fraction') || &compatible
  finish
endif

let g:loaded_scrolloff_fraction = 1

if !exists('g:scrolloff_fraction')
  let g:scrolloff_fraction = 0.25
end

if !exists('g:scrolloff_absolute_filetypes')
  let g:scrolloff_absolute_filetypes = ['qf']
end

if !exists('g:scrolloff_absolute_value')
  let g:scrolloff_absolute_value = 0
end

function! ScrollOffFraction(fraction)
  if index(g:scrolloff_absolute_filetypes, &filetype) == -1
    let l:visible_lines_in_active_window = winheight(win_getid())
    let &scrolloff = float2nr(l:visible_lines_in_active_window * a:fraction)
  else
    let &scrolloff = g:scrolloff_absolute_value
  endif
endfunction

augroup ScrolloffFraction
  autocmd!
  autocmd BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ call ScrollOffFraction(g:scrolloff_fraction)
augroup END
