"
" Sets up global variables for jmin color schemes.
"
" You can set these in your init.vim.
"

" Contrast — Options are 'low', 'high' (or 'max'), and anything else for
" normal contrast.
if !exists("g:jmin_contrast")
    let g:jmin_contrast = 'normal'
endif

" Highlight comments
if !exists("g:jmin_hlcomments")
    let g:jmin_hlcomments = 1
endif

" Highlight strings
if !exists("g:jmin_hlstrs")
    let g:jmin_hlstrs = 1
endif

" Highlight numbers
if !exists("g:jmin_hlnum")
    let g:jmin_hlnum = 0
endif

" Highlight some language keywords
if !exists("g:jmin_hlkeyword")
    let g:jmin_hlkeyword = 0
endif

" Extra formatting; headings, bold and em in HTML and Markdown
if !exists("g:jmin_extrafmt")
    let g:jmin_extrafmt = 1
endif

" Highlight fold markers
if !exists("g:jmin_hlfolds")
    let g:jmin_hlfolds = 1
endif

" Highlight line numbers
if !exists("g:jmin_hllinenumbers")
    let g:jmin_hllinenumbers = 1
endif

" Colorize bold text. Useful if your font cannot be displayed in bold.
if !exists("g:jmin_colorize_bold")
    let g:jmin_colorize_bold = 1
endif

" Force no italic.
"
" Italics are only used when some of the other highlighting options are
" active, like g:jmin_hlcomments, and g:jmin_extrafmt. With this disabled
" those highlight options will still work, but they will not use
" italics.
if !exists("g:jmin_no_italic")
    let g:jmin_no_italic = 0
endif

" Use 16 Colour Mode
"
" This makes it behave like a classic 16 colour terminal and disables non
" supported features like extended colours and underlines. Note that you can
" still enable some of that special formatting with options like extra
" formatting. Technically, bold works in a 16 colour terminal (it uses a
" brighter text colour), but only the extra styles will enable it.
if !exists("g:jmin_16")
    let g:jmin_16 = 0
endif

" Highlight HTML tags
if !exists("g:jmin_hlhtml")
    let g:jmin_hlhtml = 1
endif

" Highlight quickfix window
if !exists("g:jmin_hlquickfix")
    let g:jmin_hlquickfix = 1
endif

" 2 colours only. Highlighting is done entirely with swapping foreground and
" background and a bit of underline, bold, and italics. Items marked for
" highlighting with other options will still be highlighted.
if !exists("g:jmin_2color")
    let g:jmin_2color = 0
endif
if g:jmin_2color
    " Fill empty space in the non‐current status line.
    set fillchars=stlnc:-
else
    " Set it to space
    "set fillchars=stlnc:\ 
    " Better method, clear fillchars altogether. This is the only fillchar we
    " set here.
    set fillchars=
endif

" g:jmin_fg and g:jmin_bg let you override the main foreground and
" background colours. Set them the way the basic colours below are set. For
" example:
"
"   " sky blue text on white
"   let g:jmin_fg = { "gui": "#00AFFF", "cterm": "39" }
"   let g:jmin_bg = { "gui": "#FFFFFF", "cterm": "15" }
"
"   " classic dark green screen
"   let g:jmin_fg = { "gui": "#008000", "cterm": "2" }
"   let g:jmin_bg = { "gui": "#000000", "cterm": "0"   }
"
" Be careful with this. You can easily make everything unreadable. It’s better
" to use dark backgrounds only with the dark jmin schemes and vice versa.


" My own global variable normally set from an environment variable. If this is
" unset set it to a value that will have no effect.
if !exists("g:term_colors")
    let g:term_colors = 0
endif


" Set defaults for command shortcuts

if !exists("g:jmin_toggle_comments_shortcut")
    let g:jmin_toggle_comments_shortcut = '<leader>jmc'
endif
if !exists("g:jmin_toggle_strings_shortcut")
    let g:jmin_toggle_strings_shortcut = '<leader>jms'
endif
if !exists("g:jmin_toggle_numbers_shortcut")
    let g:jmin_toggle_numbers_shortcut = '<leader>jmn'
endif
if !exists("g:jmin_toggle_keywords_shortcut")
    let g:jmin_toggle_keywords_shortcut = '<leader>jmk'
endif
if !exists("g:jmin_toggle_extrafmt_shortcut")
    let g:jmin_toggle_extrafmt_shortcut = '<leader>jme'
endif
if !exists("g:jmin_toggle_folds_shortcut")
    let g:jmin_toggle_folds_shortcut = '<leader>jmf'
endif
if !exists("g:jmin_toggle_line_numbers_shortcut")
    let g:jmin_toggle_line_numbers_shortcut = '<leader>jml'
endif
if !exists("g:jmin_toggle_html_shortcut")
    let g:jmin_toggle_html_shortcut = '<leader>jmh'
endif
if !exists("g:jmin_toggle_quickfix_shortcut")
    let g:jmin_toggle_quickfix_shortcut = '<leader>jmq'
endif
" The ‘t’ stands for ‘terminal’.
if !exists("g:jmin_toggle_16color_terminal_shortcut")
    let g:jmin_toggle_16color_terminal_shortcut = '<leader>jmt'
endif
if !exists("g:jmin_toggle_2color_shortcut")
    let g:jmin_toggle_2color_shortcut = '<leader>jm2'
endif
