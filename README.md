# vim-scroll-off-fraction

Scroll off as a fraction of window height.


## Why?

I don't like my cursor line getting too close to the top or the bottom of the
screen. But I also don't like it being a fixed number of lines, given varying
window heights, especially when splitting horizontally. This plugin allows you
to set scrolloff to a fraction of the total window height.


## Installation

Install with a plugin manager.


## Usage

By default the scrolloff will be set to the top and bottom 25% of the screen.
You can change it with:

```vim
" Default value
let g:scroll_off_fraction = 0.25
```

See `:help 'scrolloff'` for more information.
