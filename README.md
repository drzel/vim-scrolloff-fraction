# vim-scrolloff-fraction

`scrolloff` as a fraction of window height.


## Why?

I don't like my cursor line getting too close to the top or the bottom of the
screen. But I also don't like it being an absolutely fixed number of lines,
given varying window heights, especially when splitting horizontally. This
plugin allows you to set `scrolloff` to a fraction of the total window height.


## Installation

Install with a plugin manager.


## Usage

By default `scrolloff` will be set to 25% of the active window height.  You can
change it with:

```vim
let g:scrolloff_fraction = 0.25
```

By default quickfix windows use an absolute `scrolloff` value of 0. You can set
an absolute scrolloff value for certain `filetypes`:

```vim
let g:scrolloff_absolute_filetypes = ['qf']
let g:scrolloff_absolute_value = 0
end
```

See `:help 'scrolloff'` for more information.
