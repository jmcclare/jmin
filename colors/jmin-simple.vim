" Name: JMin Simple Colorscheme
" Author: Jonathan MᶜClare
" License: Same as Vim itself
"
" simple.vim — Clear syntax highlighting groups and nothing else.
"
" This is a lot like jmin-2color, but much smaller and simpler. It also does
" not clear all highlight groups, only the syntax related ones.
"
" Based on juvenile.vim by Tom Ryder.
"
if v:version > 580
  highlight clear
  if exists('g:syntax_on')
    syntax reset
  endif
endif
let g:colors_name = 'jmin-simple'

highlight Normal     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Comment    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight String    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight NonText    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Constant   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Function   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Statement  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight PreProc    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Title      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Type       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Special    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Delimiter  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight ModeMsg    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight Underlined cterm=underline ctermfg=NONE ctermfg=NONE gui=underline guifg=NONE guibg=NONE

" NeoVim specific groups.
" Vim will get a error if you try to highlight a group with an @ in its name.
if has('nvim')
    "hi link @variable Normal
    " Linking this one does nothing. It must be directly set.
    highlight @variable     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
    hi link @markup.raw.block.markdown Normal
    hi link @markup.raw.markdown_inline Normal
    hi link @markup.heading.1.markdown Normal
    hi link @markup.heading.2.markdown Normal
    hi link @markup.heading.3.markdown Normal
    hi link @markup.heading.4.markdown Normal
    hi link @markup.heading.5.markdown Normal 
    hi link @markup.heading.6.markdown Normal
    hi link @markup.quote.markdown Normal
    hi link @spell Normal
endif
