" Name: JMin Dark Colorscheme
" Author: jmcclare (on Github)
" License: OSI approved MIT license
" Based on:
" * https://github.com/robertmeta/nofrils
" * https://github.com/pbrisbin/vim-colors-off
" * https://github.com/noahfrederick/vim-hemisu/

set background=dark

" Source my reset color scheme to properly reset all highlight groups to their
" defaults.
runtime! colors/jmin/reset.vim

" Define global variables.
runtime! colors/jmin/globals.vim

let g:colors_name = "jmin-dark"
" Since &t_Co is no deprecated in NeoVim and has not returned the correct
" number of colours since Ubuntu 18.04 or earlier we detect 8 or 16 color
" terminals indirectly by checking for the `linux` TERM type in the $TERM
" environment variable. This is probably the only 16 colour terminal anyone is
" still using today. It’s also the only one that does not support things like
" underlined text.
"
" I set a script variable from the environment variable because you cannot use
" environment variables in if statements.
let s:term=$TERM



"
" Set some basic colours.
"

" My basic colours

let s:fg              = { "gui": "fg", "cterm": "fg" }
let s:bg              = { "gui": "bg", "cterm": "bg" }
" There is actually no use case for s:none. Anything I don’t explicitly set
" with s:h gets set to NONE.
let s:none            = { "gui": "NONE", "cterm": "NONE" }

"let s:white           = { "gui": "#FFFFFF", "cterm": "15" }
" Use the 256 color pallette explicit white instead of the white basic
" terminal color because that may be changed by the terminal emulator’s
" config.
let s:white           = { "gui": "#FFFFFF", "cterm": "231" }
let s:more_extreme_near_white   = { "gui": "#F7F7F7", "cterm": "255" }
let s:extreme_near_white   = { "gui": "#F2F2F2", "cterm": "255" }
let s:nearest_white   = { "gui": "#EEEEEE", "cterm": "255" }
"let s:dim_white       = { "gui": "#E5E5E5", "cterm": "7" }
let s:dim_white       = { "gui": "#E5E5E5", "cterm": "254" }
let s:nearer_white    = { "gui": "#E4E4E4", "cterm": "254" }
let s:nearer_white2   = { "gui": "#DADADA", "cterm": "253" }
let s:near_white      = { "gui": "#D0D0D0", "cterm": "252" }
let s:lighter_grey0   = { "gui": "#BCBCBC", "cterm": "250" }
let s:lighter_grey    = { "gui": "#B2B2B2", "cterm": "249" }
let s:lighter_grey2   = { "gui": "#A8A8A8", "cterm": "248" }
let s:light_grey      = { "gui": "#9E9E9E", "cterm": "247" }
let s:grey            = { "gui": "#8A8A8A", "cterm": "245" }
let s:dim_grey        = { "gui": "#6C6C6C", "cterm": "242" }
let s:dark_grey       = { "gui": "#585858", "cterm": "240" }
let s:darker_grey     = { "gui": "#444444", "cterm": "238" }
let s:darker_grey2    = { "gui": "#3A3A3A", "cterm": "237" }
let s:very_dark_grey  = { "gui": "#303030", "cterm": "236" }
" Darkest grey that is still legible on black
let s:darkest_grey    = { "gui": "#262626", "cterm": "235" }
let s:near_black      = { "gui": "#1C1C1C", "cterm": "234" }
let s:nearest_black   = { "gui": "#121212", "cterm": "233" }
let s:extreme_near_black   = { "gui": "#0C0C0C", "cterm": "233" }
"let s:black           = { "gui": "#000000", "cterm": "0"   }
" Use the 256 color pallette explicit black instead of the black basic
" terminal color because that may be changed by the terminal emulator’s
" config.
let s:black           = { "gui": "#000000", "cterm": "16"   }

let s:palest_sky_blue = { "gui": "#D7FFFF", "cterm": "195" }
" Tweaked to match the luminosity of lighter_grey0
let s:paler_sky_blue0 = { "gui": "#99C1E8", "cterm": "153" }
let s:paler_sky_blue  = { "gui": "#AFD7FF", "cterm": "153" }
" Tweaked to match the luminosity of light_grey
let s:paler_sky_blue2 = { "gui": "#AAD2FA", "cterm": "153" }
let s:pale_sky_blue   = { "gui": "#87D7FF", "cterm": "117" }
let s:bright_sky_blue = { "gui": "#5FD7FF", "cterm": "81" }
let s:deep_sky_blue   = { "gui": "#0087FF", "cterm": "33" }
let s:sky_blue        = { "gui": "#00AFFF", "cterm": "39" }
let s:dim_sky_blue    = { "gui": "#5F87AF", "cterm": "67" }
" Not exactly standard pallette colour 61. A dimmer version of 67, but close.
let s:dimmer_sky_blue = { "gui": "#5B6CA8", "cterm": "61" }
let s:dark_sky_blue   = { "gui": "#005FFF", "cterm": "27" }
"let s:bright_blue     = { "gui": "#5C5CFF", "cterm": "12" }
let s:bright_blue     = { "gui": "#5F5FFF", "cterm": "63" }
"let s:blue            = { "gui": "#2626FF", "cterm": "4" }
let s:blue            = { "gui": "#0000FF", "cterm": "21" }
let s:pale_dark_blue  = { "gui": "#3096C4", "cterm": "68"   }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"   }
let s:darkest_blue    = { "gui": "#00005F", "cterm": "17" }

let s:bluish_purple   = { "gui": "#5F87FF", "cterm": "69" }
let s:pale_magenta    = { "gui": "#FFD7FF", "cterm": "225" }

let s:palest_red      = { "gui": "#FFD7D7", "cterm": "224" }
let s:paler_red       = { "gui": "#FFAFAF", "cterm": "217" }
let s:pale_red        = { "gui": "#FF5F5F", "cterm": "203" }
"let s:bright_red      = { "gui": "#FF0000", "cterm": "9" }
let s:bright_red      = { "gui": "#FF0000", "cterm": "196" }
let s:lighter_red     = { "gui": "#D70000", "cterm": "160" }
"let s:red             = { "gui": "#800000", "cterm": "1" }
let s:red             = { "gui": "#870000", "cterm": "88" }
let s:dark_red        = { "gui": "#5F0000", "cterm": "52" }

let s:brighter_orange = { "gui": "#FFAF00", "cterm": "214" }
let s:bright_orange   = { "gui": "#FF8700", "cterm": "208" }
let s:lighter_orange  = { "gui": "#D78700", "cterm": "172" }
let s:orange          = { "gui": "#AF5F00", "cterm": "130" }

let s:bright_yellow   = { "gui": "#FFFF00", "cterm": "226" }
let s:paler_yellow    = { "gui": "#D7FF87", "cterm": "192" }
let s:pale_yellow     = { "gui": "#D7FF5F", "cterm": "191" }
let s:palish_yellow   = { "gui": "#D7FF00", "cterm": "190" }
let s:lighter_yellow  = { "gui": "#D7D700", "cterm": "184" }
let s:light_yellow    = { "gui": "#AFAF00", "cterm": "142" }
"let s:yellow          = { "gui": "#808000", "cterm": "3" }
let s:yellow          = { "gui": "#878700", "cterm": "100" }

let s:palest_green    = { "gui": "#D7FFD7", "cterm": "194" }
let s:extreme_pale_green = { "gui": "#AFFFD7", "cterm": "158" }
let s:paler_green     = { "gui": "#87FFD7", "cterm": "122" }
let s:pale_green      = { "gui": "#5FFFAF", "cterm": "85" }
let s:bright_green    = { "gui": "#00FF00", "cterm": "10" }
let s:lighter_green   = { "gui": "#00D700", "cterm": "40" }
let s:light_green     = { "gui": "#00AF00", "cterm": "34" }
"let s:green           = { "gui": "#008000", "cterm": "2" }
let s:green           = { "gui": "#008700", "cterm": "28" }
let s:dark_green      = { "gui": "#005F00", "cterm": "22" }

let s:paler_cyan      = { "gui": "#AFFFFF", "cterm": "159" }
let s:pale_cyan       = { "gui": "#87FFFF", "cterm": "123" }
"let s:bright_cyan     = { "gui": "#00FFFF", "cterm": "14" }
let s:bright_cyan     = { "gui": "#00FFFF", "cterm": "51" }
"let s:cyan            = { "gui": "#00CDCD", "cterm": "6" }
let s:cyan            = { "gui": "#00D7D7", "cterm": "44" }
let s:dark_cyan       = { "gui": "#00AFAF", "cterm": "37" }
let s:dim_cyan        = { "gui": "#008787", "cterm": "30" }
let s:darkest_cyan    = { "gui": "#005F5F", "cterm": "23" }


" " standard terminal colours based on xterm defaults
" 
" " black
" let s:color0 = { "gui": "#000000", "cterm": "0" }
" " red3
" let s:color1 = { "gui": "#CD0000", "cterm": "1" }
" " green3
" let s:color2 = { "gui": "#00CD00", "cterm": "2" }
" " yellow3
" let s:color3 = { "gui": "#CDCD00", "cterm": "3" }
" " blue - my choice, more legible on black
" let s:color4 = { "gui": "#2626FF", "cterm": "4" }
" " magenta3
" let s:color5 = { "gui": "#CD00CD", "cterm": "5" }
" " cyan3
" let s:color6 = { "gui": "#00CDCD", "cterm": "6" }
" " gray90
" let s:color7 = { "gui": "#E5E5E5", "cterm": "7" }
" " gray66, closest to the Ubuntu framebuffer terminal’s default DarkGrey.
" " In the framebuffer terminal NeoVim tries to find the closest match to your
" " GUI colours if you have them set. This is probably because of the
" " termguicolors option.
" " Scratch that. gray90 looks closest to the framebuffer terminal default.
" "let s:color7 = { "gui": "#A8A8A8", "cterm": "7" }
" " gray30. The Ubuntu 16.04 xterm default is gray50.
" "let s:color8 = { "gui": "#4D4D4D", "cterm": "8" }
" " gray50. This looks closer to the Ubuntu framebuffer terminal default.
" let s:color8 = { "gui": "#808080", "cterm": "8" }
" " red
" let s:color9 = { "gui": "#FF0000", "cterm": "9" }
" " green
" let s:color10 = { "gui": "#00FF00", "cterm": "10" }
" " yellow
" let s:color11 = { "gui": "#FFFF00", "cterm": "11" }
" " bright blue - rgb: 5c5c/ff — my own choice
" let s:color12 = { "gui": "#5C5CFF", "cterm": "12" }
" " magenta
" let s:color13 = { "gui": "#FF00FF", "cterm": "13" }
" " cyan
" let s:color14 = { "gui": "#00FFFF", "cterm": "14" }
" " white
" let s:color15 = { "gui": "#FFFFFF", "cterm": "15" }


" standard terminal colours based on Ubuntu framebuffer terminal defaults
" defined in /etc/vtrgb

" black
let s:color0 = { "gui": "#010101", "cterm": "0" }
" red3
let s:color1 = { "gui": "#DE382B", "cterm": "1" }
" green3
let s:color2 = { "gui": "#39B54A", "cterm": "2" }
" yellow3
let s:color3 = { "gui": "#FFC706", "cterm": "3" }
" blue
let s:color4 = { "gui": "#006FB8", "cterm": "4" }
" magenta3
let s:color5 = { "gui": "#762671", "cterm": "5" }
" cyan3
let s:color6 = { "gui": "#2CB5E9", "cterm": "6" }
" gray90
let s:color7 = { "gui": "#CCCCCC", "cterm": "7" }
" gray50
let s:color8 = { "gui": "#808080", "cterm": "8" }
" red
let s:color9 = { "gui": "#FF0000", "cterm": "9" }
" green
let s:color10 = { "gui": "#00FF00", "cterm": "10" }
" yellow
let s:color11 = { "gui": "#FFFF00", "cterm": "11" }
" bright blue
let s:color12 = { "gui": "#0000FF", "cterm": "12" }
" magenta
let s:color13 = { "gui": "#FF00FF", "cterm": "13" }
" cyan
let s:color14 = { "gui": "#00FFFF", "cterm": "14" }
" white
let s:color15 = { "gui": "#FFFFFF", "cterm": "15" }



"
" Set named colors for groups
"

" Close to the Ubuntu framebuffer terminal standard text foreground colour.
" This is also probably the default black terminal foreground colour for older
" systems.
let s:norm_fg = s:near_white
if g:jmin_contrast == 'low'
    let s:norm_fg = s:lighter_grey0
endif
if g:jmin_contrast == 'lowest'
    let s:norm_fg = s:light_grey
endif
if g:jmin_contrast == 'high' || g:jmin_contrast == 'max'
    " Pure white.
    "
    " This fits the xterm default colours, although classic xterms were black
    " on white.
    let s:norm_fg = s:white
endif
if exists("g:jmin_fg")
    let s:norm_fg = g:jmin_fg
endif

let s:norm_bg = s:near_black
if exists("g:jmin_bg")
    let s:norm_bg = g:jmin_bg
endif

let s:bold_fg = s:norm_fg
if g:jmin_colorize_bold
    let s:bold_fg = s:white
    if exists("g:jmin_bold")
        let s:bold_fg = g:jmin_bold
    endif
endif

let s:bold        = { "gui": "bold", "cterm": "bold" }
if g:jmin_no_bold
    let s:bold    = s:none
endif

let s:italic         = { "gui": "italic", "cterm": "italic" }
let s:gui_italic     = { "gui": "italic", "cterm": "NONE" }
if g:jmin_no_italic
    let s:italic     = s:none
    let s:gui_italic = s:none
endif

let s:underline        = { "gui": "underline", "cterm": "underline" }
let s:undercurl        = { "gui": "undercurl", "cterm": "undercurl" }
if g:jmin_no_underline
    let s:underline    = s:none
    let s:undercurl    = s:none
endif


" These colours will only be applied below if the options to highlight these
" are set to 1.
let s:comment_fg               = s:dark_grey
if exists("g:jmin_comment")
    let s:comment_fg           = g:jmin_comment
endif
let s:comment_attr             = s:italic
"let s:todo                     = s:bright_green
let s:todo_fg                  = s:comment_fg
let s:todo_attr                = s:comment_attr
let s:vim_comment_title_fg     = s:comment_fg
let s:vim_comment_title_attr   = s:comment_attr
let s:fold_fg                  = s:dark_grey
"let s:fold_attr                = { "gui": "italic", "cterm": "italic" }
let s:fold_attr                = s:none
"let s:linenr                   = s:very_dark_grey
let s:linenr                   = s:darker_grey2
"let s:string                   = s:grey
let s:string                   = s:paler_sky_blue2
if exists("g:jmin_string")
    let s:string               = g:jmin_string
endif
let s:constant                 = s:string
"let s:statement_fg             = s:norm_fg
let s:statement_fg             = s:bold_fg
let s:statement_attr           = s:bold
let s:preproc_fg               = s:statement_fg
let s:preproc_attr             = s:statement_attr
let s:type_fg                  = s:statement_fg
let s:type_attr                = s:statement_attr
let s:special_fg               = s:statement_fg
let s:special_attr             = s:statement_attr
let s:html_fg                  = s:grey
let s:html_h1_fg               = s:bold_fg
let s:html_h1_attr             = s:bold
let s:html_link_attr           = s:underline
if g:jmin_no_underline
    let s:html_link_attr       = s:bold
endif
let s:html_bold_fg             = s:bold_fg
let s:html_bold_attr           = s:bold
let s:html_italic_attr         = s:italic

let s:help_hypertext_jump_attr = s:underline

" Dividers

"let s:statusline_fg = { "gui": "bg", "cterm": "bg" }
"let s:statusline_bg = { "gui": "fg", "cterm": "fg" }
" NOTE: I had to set these two to explicit colours because my TransBG function
" was messing up the active status line (fg ended up same as bg)—probably
" because it sets the bg to NONE.
let s:statusline_fg = s:norm_fg
let s:statusline_bg = s:norm_bg
let s:statusline_attr  = { "gui": "reverse", "cterm": "reverse" }

let s:statusline_nc_bg = s:darkest_grey
let s:statusline_nc_fg = s:dark_grey
let s:statusline_nc_attr = s:none
let s:vertsplit = s:darkest_grey

" Search

let s:search_fg = s:pale_yellow
let s:search_bg = s:deep_sky_blue
let s:search_attr    = s:none
let s:incsearch_fg   = s:search_fg
let s:incsearch_bg   = s:search_bg
let s:incsearch_attr = { "gui": "reverse", "cterm": "reverse" }

" Misc

let s:cursorline_fg    = s:none
let s:cursorline_bg    = s:nearest_black
let s:cursorline_attr  = s:none
let s:cursorim_fg      = s:nearest_black
let s:cursorim_bg      = s:color14
let s:cursorim_attr    = s:none
let s:colorcolumn_fg   = s:cursorline_fg
let s:colorcolumn_bg   = s:cursorline_bg
let s:colorcolumn_attr = s:cursorline_attr
let s:error_fg         = s:white
let s:error_bg         = s:red
let s:error_attr       = s:none
let s:errormsg_fg      = s:bright_red
let s:errormsg_bg      = s:none
let s:errormsg_attr    = s:none
"let s:matchparen_fg    = s:white
"let s:matchparen_bg    = s:darkest_blue
"let s:matchparen_attr  = s:none
"let s:matchparen_fg    = s:norm_fg
let s:matchparen_fg    = s:bold_fg
let s:matchparen_bg    = s:norm_bg
let s:matchparen_attr  = s:bold
"let s:directory       = s:bluish_purple
let s:directory        = s:norm_fg
let s:symlink          = s:norm_fg
let s:nontext_fg       = s:darker_grey
let s:nontext_bg       = s:none
let s:signcolumn       = s:dark_grey
"let s:modemsg          = s:bluish_purple
let s:modemsg          = s:norm_fg
"let s:modemsg_attr     = s:bold
" Some syntax groups could be linked to this (try some .cmake files for
" examples), so I keep it completely unhighlighted.
let s:modemsg_attr     = s:none
"let s:moremsg          = s:bluish_purple
"let s:moremsg          = s:norm_fg
let s:moremsg          = s:bold_fg
let s:moremsg_attr     = s:bold
let s:question         = s:bluish_purple
let s:warningmsg_fg    = s:bright_orange
let s:warningmsg_bg    = s:none
let s:warningmsg_attr  = s:none
let s:visual_fg        = s:norm_fg
let s:visual_bg        = s:norm_bg
let s:visual_attr      = { "gui": "reverse", "cterm": "reverse" }
let s:visualnos_fg     = s:visual_fg
let s:visualnos_bg     = s:visual_bg
let s:visualnos_attr   = { "gui": "reverse,underline", "cterm": "reverse,underline" }
if g:jmin_no_underline
    let s:visualnos_attr   = { "gui": "reverse", "cterm": "reverse" }
endif
" Unprintable characters: text displayed differently from what it really is.
" But not 'listchars' whitespace.
let s:specialkey       = s:grey
let s:tabline_fg       = s:statusline_nc_fg
let s:tabline_bg       = s:statusline_nc_bg
let s:tabline_attr     = s:statusline_nc_attr
"let s:tablinesel_fg    = s:none
let s:tablinesel_fg    = s:bold_fg
let s:tablinesel_bg    = s:none
let s:tablinesel_attr  = s:none
"let s:tablinesel_attr  = s:bold
"let s:tablinefill      = s:norm_bg
"let s:tablinefill      = s:darker_grey2
"let s:tablinefill      = s:statusline_nc_bg
let s:tablinefill      = s:very_dark_grey
let s:underlined_attr  = s:underline
" Only NeoVim Diagnostics has these message types
let s:infomsg_fg       = s:cyan
let s:infomsg_bg       = s:none
let s:infomsg_attr     = s:none
let s:hintmsg_fg       = s:sky_blue
let s:hintmsg_bg       = s:none
let s:hintmsg_attr     = s:none
let s:okmsg_fg         = s:light_green
let s:okmsg_bg         = s:none
let s:okmsg_attr       = s:none

" Diagnostics

let s:diagnosticerror_fg   = s:errormsg_fg
let s:diagnosticerror_bg   = s:errormsg_bg
let s:diagnosticerror_attr = s:errormsg_attr
let s:diagnosticwarn_fg    = s:warningmsg_fg
let s:diagnosticwarn_bg    = s:warningmsg_bg
let s:diagnosticwarn_attr  = s:warningmsg_attr
let s:diagnosticinfo_fg    = s:infomsg_fg
let s:diagnosticinfo_bg    = s:infomsg_bg
let s:diagnosticinfo_attr  = s:infomsg_attr
let s:diagnostichint_fg    = s:hintmsg_fg
let s:diagnostichint_bg    = s:hintmsg_bg
let s:diagnostichint_attr  = s:hintmsg_attr
let s:diagnosticok_fg      = s:okmsg_fg
let s:diagnosticok_bg      = s:okmsg_bg
let s:diagnosticok_attr    = s:okmsg_attr
" Settings for terminals.
"
" The terminal cannot render undercurls, so it adds underlines instead. I
" add underlines below to match the GUI style.
"
" Newer terminals can render separately coloured underlines, but I assume
" anything that cannot do undercurls is an older terminal.
"
" The foreground colours will apply to the text and the underline.
let s:diagnosticunderlineerror_fg   = s:errormsg_fg
let s:diagnosticunderlineerror_bg   = s:errormsg_bg
let s:diagnosticunderlineerror_guisp = s:errormsg_fg
let s:diagnosticunderlineerror_attr = s:underline
let s:diagnosticunderlinewarn_fg    = s:warningmsg_fg
let s:diagnosticunderlinewarn_bg    = s:warningmsg_bg
let s:diagnosticunderlinewarn_guisp = s:warningmsg_fg
let s:diagnosticunderlinewarn_attr  = s:underline
let s:diagnosticunderlineinfo_fg    = s:infomsg_fg
let s:diagnosticunderlineinfo_bg    = s:infomsg_bg
let s:diagnosticunderlineinfo_guisp = s:infomsg_fg
let s:diagnosticunderlineinfo_attr  = s:underline
let s:diagnosticunderlinehint_fg    = s:hintmsg_fg
let s:diagnosticunderlinehint_bg    = s:hintmsg_bg
let s:diagnosticunderlinehint_guisp = s:hintmsg_fg
let s:diagnosticunderlinehint_attr  = s:underline
let s:diagnosticunderlineok_fg      = s:okmsg_fg
let s:diagnosticunderlineok_bg      = s:okmsg_bg
let s:diagnosticunderlineok_guisp   = s:okmsg_fg
let s:diagnosticunderlineok_attr    = s:underline
" We assume a terminal with termguicolors (full, 16 million colour support) is
" as good as GVim and can do separate underline colours and undercurls. In
" full colour terminals that cannot do these things Vim and NeoVim should
" safely degrade to underlines. There will be no special colour, but there is
" no direct way to test for support of these features.
if (has('termguicolors') && &termguicolors || has('gui_running'))  && ! g:jmin_no_underline
    " Set text colours to empty dictionaries so that the underlying text
    " colour remains.
    " Set all styles to undercurl
    let s:diagnosticunderlineerror_fg   = {}
    let s:diagnosticunderlineerror_bg   = {}
    let s:diagnosticunderlineerror_attr = { "gui": "undercurl", "cterm": "undercurl" }
    let s:diagnosticunderlinewarn_fg    = {}
    let s:diagnosticunderlinewarn_bg    = {}
    let s:diagnosticunderlinewarn_attr  = { "gui": "undercurl", "cterm": "undercurl" }
    let s:diagnosticunderlineinfo_fg    = {}
    let s:diagnosticunderlineinfo_bg    = {}
    let s:diagnosticunderlineinfo_attr  = { "gui": "undercurl", "cterm": "undercurl" }
    let s:diagnosticunderlinehint_fg    = {}
    let s:diagnosticunderlinehint_bg    = {}
    let s:diagnosticunderlinehint_attr  = { "gui": "undercurl", "cterm": "undercurl" }
    let s:diagnosticunderlineok_fg      = {}
    let s:diagnosticunderlineok_bg      = {}
    let s:diagnosticunderlineok_attr    = { "gui": "undercurl", "cterm": "undercurl" }
endif
let s:normalfloat_fg                = s:none
let s:normalfloat_bg                = s:nearest_black
let s:floatborder_fg                = s:darkest_grey
let s:floatborder_bg                = s:normalfloat_bg

" Pmenu

let s:pmenu_fg         = s:norm_fg
let s:pmenu_bg         = s:norm_bg
let s:pmenu_attr       = { "cterm": "reverse", "gui": "reverse" }
let s:pmenusel_fg      = s:nearest_black
let s:pmenusel_bg      = s:pale_sky_blue
let s:pmenusel_attr    = s:none
" This color is not used. PmenuSbar does not use a foreground colour unless
" you give it the reverse attribute.
let s:pmenusbar_fg     = s:none
let s:pmenusbar_bg     = s:grey
let s:pmenusbar_attr   = s:none
" This color is not used. PmenuThumb does not use a foreground colour unless
" you give it the reverse attribute.
let s:pmenuthumb_fg    = s:none
let s:pmenuthumb_bg    = s:lighter_grey
let s:pmenuthumb_attr  = s:none

" Quickfix Window

let s:qffilename    = s:fold_fg
let s:qfseparator   = s:norm_fg
let s:qflinenr      = s:linenr
"let s:qflinenr      = s:comment_fg
"let s:qflinenr_attr = { "gui": "italic", "cterm": "bold" }
let s:qflinenr_attr = s:none
"let s:qflinenr_attr = s:comment_attr
let s:qfline_fg     = s:cursorline_fg
let s:qfline_bg     = s:cursorline_bg
let s:qfline_attr   = s:cursorline_attr

" Diff

" Side‐by‐Side Diff
let s:diffadd_fg               = s:none
"let s:diffadd_bg               = s:dim_cyan
" A bit brighter, but it needs to be to make highlighted comments legible.
let s:diffadd_bg               = s:dark_cyan
let s:diffadd_attr             = s:none
let s:diffchange_fg            = s:none
"let s:diffchange_bg            = s:none
" For full colour only, use a subtle tint of the background colour.
let s:diffchange_bg            = { "gui": "#142828", "cterm": "NONE" }
let s:diffdelete_fg            = s:very_dark_grey
let s:diffdelete_bg            = s:nearest_black
let s:diffdelete_attr          = s:none
let s:difftext_fg              = s:none
let s:difftext_bg              = s:diffadd_bg
let s:difftext_attr            = s:none

" Diff Text and Git Diff
"let s:difffile_fg        = s:none
let s:difffile_fg        = s:bold_fg
let s:difffile_bg        = s:none
let s:difffile_attr      = s:bold
"let s:diffnewfile_fg     = s:none
let s:diffnewfile_fg     = s:bold_fg
let s:diffnewfile_bg     = s:none
let s:diffnewfile_attr   = s:bold
"let s:diffindexline_fg   = s:none
let s:diffindexline_fg   = s:bold_fg
let s:diffindexline_bg   = s:none
let s:diffindexline_attr = s:bold
"let s:diffline_fg        = s:none
let s:diffline_fg        = s:bold_fg
let s:diffline_bg        = s:none
let s:diffline_attr      = s:bold
"let s:diffsubname_fg     = s:none
let s:diffsubname_fg     = s:bold_fg
let s:diffsubname_bg     = s:none
let s:diffsubname_attr   = s:bold
let s:gitdiff_fg         = s:none
let s:gitdiff_bg         = s:none
let s:gitdiff_attr       = s:none
let s:diffadded_fg       = s:green
let s:diffadded_bg       = s:none
let s:diffadded_attr     = s:none
let s:diffremoved_fg     = s:comment_fg
let s:diffremoved_bg     = s:none
let s:diffremoved_attr   = s:none

" Git Log
"let s:gitkeyword_fg   = s:none
let s:gitkeyword_fg   = s:bold_fg
let s:gitkeyword_bg   = s:none
let s:gitkeyword_attr = s:bold
"let s:githash_fg      = s:none
let s:githash_fg      = s:bold_fg
let s:githash_bg      = s:none
let s:githash_attr    = s:bold
let s:githead_fg      = s:none
let s:githead_bg      = s:none
let s:githead_attr    = s:none

" Git Gutter
let s:gitgutteradd_fg          = s:green
let s:gitgutterchange_fg       = s:yellow
let s:gitgutterdelete_fg       = s:lighter_red
let s:gitgutterchangedelete_fg = s:gitgutterchange_fg

" Spelling

" Settings for terminals.
"
" The terminal cannot render undercurls, so it adds underlines instead. I
" add underlines below to match the GUI style.
"
" The foreground colours will apply to the text and the underline.
let s:spellbad_fg      = s:bright_red
let s:spellbad_bg      = s:none
let s:spellbad_attr    = s:underline
let s:spellcap_fg      = s:sky_blue
let s:spellcap_bg      = s:none
let s:spellcap_attr    = s:underline
let s:spelllocal_fg    = s:cyan
let s:spelllocal_bg    = s:none
let s:spelllocal_attr  = s:underline
let s:spellrare_fg     = s:color13
let s:spellrare_bg     = s:none
let s:spellrare_attr   = s:underline

" These will be colours for undercurls
let s:spellbad_guisp   = s:spellbad_fg
let s:spellcap_guisp   = s:spellcap_fg
let s:spelllocal_guisp = s:spelllocal_fg
let s:spellrare_guisp  = s:spellrare_fg

" We assume a terminal with termguicolors (full, 16 million colour support) is
" as good as GVim and can do separate underline colours and undercurls. In
" full colour terminals that cannot do these things Vim and NeoVim should
" safely degrade to underlines. There will be no special colour, but there is
" no direct way to test for support of these features.
if (has('termguicolors') && &termguicolors || has('gui_running'))  && ! g:jmin_no_underline
    " Set gui and cterm foreground colours to NONE. This tells Vim / NeoVim to
    " not change those attributes for spelling error text. It will leave the
    " underlying foreground colours intact.
    "
    " Set all styles to undercurl
    let s:spellbad_fg      = s:none
    let s:spellbad_bg      = s:none
    let s:spellbad_attr    = { "gui": "undercurl", "cterm": "undercurl" }
    let s:spellcap_fg      = s:none
    let s:spellcap_bg      = s:none
    let s:spellcap_attr    = { "gui": "undercurl", "cterm": "undercurl" }
    let s:spelllocal_fg    = s:none
    let s:spelllocal_bg    = s:none
    let s:spelllocal_attr  = { "gui": "undercurl", "cterm": "undercurl" }
    let s:spellrare_fg     = s:none
    let s:spellrare_bg     = s:none
    let s:spellrare_attr   = { "gui": "undercurl", "cterm": "undercurl" }

    " Vim does not handle undercurl gracefully in most terminals. The best it
    " can do is substitute with underline. In some terminals undercurl does
    " nothing regardless of the termguicolors setting. Here I target Vim and
    " set cterm=underline and I set the foreground colours again.
    "
    " The only way I know of to target regular Vim is to target all but NeoVim.
    if ! has('nvim') && ! has('gui_running')
        let s:spellbad_fg      = s:bright_red
        let s:spellbad_attr    = { "gui": "undercurl", "cterm": "underline" }
        let s:spellcap_fg      = s:sky_blue
        let s:spellcap_attr    = { "gui": "undercurl", "cterm": "underline" }
        let s:spelllocal_fg    = s:cyan
        let s:spelllocal_attr  = { "gui": "undercurl", "cterm": "underline" }
        let s:spellrare_fg     = s:color13
        let s:spellrare_attr   = { "gui": "undercurl", "cterm": "underline" }
    endif
endif

" Sneak jumpsearch plugin
"
" They all use the same foreground colour
let s:sneak_fg = s:black
" These are their individual background colours
let s:sneaklabelmask = { "gui": "#d7FFFF", "cterm": "195" }
let s:sneaktarget = { "gui": "#d7FFFF", "cterm": "195" }
let s:sneaklabeltarget = { "gui": "#d7AFFF", "cterm": "183" }
let s:sneakscope = { "gui": "#d7AFFF", "cterm": "183" }

" indent-guides
let s:indent_guides_bg = s:darkest_grey


if g:jmin_2color
    let s:statusline_fg      = s:norm_fg
    let s:statusline_bg      = s:norm_bg
    let s:statusline_attr    = { "gui": "reverse", "cterm": "reverse" }

    let s:statusline_nc_bg   = s:norm_bg
    let s:statusline_nc_fg   = s:norm_fg
    let s:statusline_nc_attr = s:none
    let s:vertsplit          = s:norm_fg

    let s:search_fg          = s:norm_fg
    let s:search_bg          = s:norm_bg
    let s:search_attr        = { "gui": "reverse", "cterm": "reverse" }
    let s:incsearch_fg       = s:search_fg
    let s:incsearch_bg       = s:search_bg
    let s:incsearch_attr     = { "gui": "bold,reverse", "cterm": "bold,reverse" }
    if g:jmin_no_bold
        let s:incsearch_attr = { "gui": "reverse", "cterm": "reverse" }
    endif

    let s:cursorline_fg      = s:norm_fg
    let s:cursorline_bg      = s:norm_bg
    let s:cursorline_attr    = { "gui": "reverse", "cterm": "reverse" }
    let s:cursorim_fg        = s:norm_fg
    let s:cursorim_bg        = s:norm_bg
    let s:cursorim_attr      = { "gui": "reverse", "cterm": "reverse" }
    let s:colorcolumn_fg     = s:cursorline_fg
    let s:colorcolumn_bg     = s:cursorline_bg
    let s:colorcolumn_attr   = s:cursorline_attr
    let s:error_fg           = s:norm_fg
    let s:error_bg           = s:norm_bg
    let s:error_attr         = { "gui": "reverse", "cterm": "reverse" }
    let s:errormsg_fg        = s:norm_fg
    let s:errormsg_bg        = s:norm_bg
    let s:errormsg_attr      = { "gui": "reverse", "cterm": "reverse" }
    "let s:matchparen_fg      = s:norm_fg
    "let s:matchparen_bg      = s:norm_bg
    "let s:matchparen_attr    = s:bold
    let s:matchparen_fg      = s:norm_fg
    let s:matchparen_bg      = s:norm_bg
    let s:matchparen_attr    = s:bold
    let s:directory          = s:norm_fg
    let s:symlink            = s:norm_fg
    let s:nontext_fg         = s:norm_fg
    let s:nontext_bg         = s:none
    let s:signcolumn         = s:norm_fg
    let s:modemsg            = s:norm_fg
    "let s:modemsg_attr       = s:bold
    let s:modemsg_attr       = s:none
    let s:moremsg            = s:norm_fg
    let s:moremsg_attr       = s:bold
    let s:question           = s:norm_fg
    let s:warningmsg_fg      = s:norm_fg
    let s:warningmsg_bg      = s:none
    let s:warningmsg_attr    = s:none
    let s:visual_fg          = s:norm_fg
    let s:visual_bg          = s:norm_bg
    let s:visual_attr        = { "gui": "reverse", "cterm": "reverse" }
    let s:visualnos_fg       = s:visual_fg
    let s:visualnos_bg       = s:visual_bg
    let s:visualnos_attr     = { "gui": "reverse,underline", "cterm": "reverse,underline" }
    if g:jmin_no_underline
        let s:visualnos_attr     = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:specialkey         = s:norm_fg
    let s:tabline_fg         = s:norm_fg
    let s:tabline_bg         = s:norm_bg
    let s:tabline_attr       = { "gui": "reverse", "cterm": "reverse" }
    let s:tablinesel_fg      = s:none
    let s:tablinesel_bg      = s:none
    let s:tablinesel_attr    = s:none
    "let s:tablinesel_attr    = s:bold
    let s:tablinefill        = s:norm_fg
    " Only NeoVim Diagnostics has these message types
    let s:infomsg_fg         = s:norm_fg
    let s:infomsg_bg         = s:none
    let s:infomsg_attr       = s:none
    let s:hintmsg_fg         = s:norm_fg
    let s:hintmsg_bg         = s:none
    let s:hintmsg_attr       = s:none
    let s:okmsg_fg           = s:norm_fg
    let s:okmsg_bg           = s:none
    let s:okmsg_attr         = s:none

    " Diagnostics

    let s:diagnosticerror_fg   = s:errormsg_fg
    let s:diagnosticerror_bg   = s:errormsg_bg
    let s:diagnosticerror_attr = s:errormsg_attr
    let s:diagnosticwarn_fg    = s:warningmsg_fg
    let s:diagnosticwarn_bg    = s:warningmsg_bg
    let s:diagnosticwarn_attr  = s:warningmsg_attr
    let s:diagnosticinfo_fg    = s:infomsg_fg
    let s:diagnosticinfo_bg    = s:infomsg_bg
    let s:diagnosticinfo_attr  = s:infomsg_attr
    let s:diagnostichint_fg    = s:hintmsg_fg
    let s:diagnostichint_bg    = s:hintmsg_bg
    let s:diagnostichint_attr  = s:hintmsg_attr
    let s:diagnosticok_fg      = s:okmsg_fg
    let s:diagnosticok_bg      = s:okmsg_bg
    let s:diagnosticok_attr    = s:okmsg_attr
    " Settings for terminals.
    "
    " The terminal cannot render undercurls, so it adds underlines instead. I
    " add underlines below to match the GUI style.
    "
    " The foreground colours will apply to the text and the underline.
    let s:diagnosticunderlineerror_fg   = s:errormsg_fg
    let s:diagnosticunderlineerror_bg   = s:errormsg_bg
    let s:diagnosticunderlineerror_guisp = s:errormsg_fg
    let s:diagnosticunderlineerror_attr = s:underline
    if g:jmin_no_underline
        let s:diagnosticunderlineerror_attr = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:diagnosticunderlinewarn_fg    = s:warningmsg_fg
    let s:diagnosticunderlinewarn_bg    = s:warningmsg_bg
    let s:diagnosticunderlinewarn_guisp = s:warningmsg_fg
    let s:diagnosticunderlinewarn_attr  = s:underline
    if g:jmin_no_underline
        let s:diagnosticunderlinewarn_attr  = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:diagnosticunderlineinfo_fg    = s:infomsg_fg
    let s:diagnosticunderlineinfo_bg    = s:infomsg_bg
    let s:diagnosticunderlineinfo_guisp = s:infomsg_fg
    let s:diagnosticunderlineinfo_attr  = s:underline
    let s:diagnosticunderlinehint_fg    = s:hintmsg_fg
    let s:diagnosticunderlinehint_bg    = s:hintmsg_bg
    let s:diagnosticunderlinehint_guisp = s:hintmsg_fg
    let s:diagnosticunderlinehint_attr  = s:underline
    let s:diagnosticunderlineok_fg      = s:okmsg_fg
    let s:diagnosticunderlineok_bg      = s:okmsg_bg
    let s:diagnosticunderlineok_guisp   = s:okmsg_fg
    let s:diagnosticunderlineok_attr    = s:underline
    " We assume a terminal with termguicolors (full, 16 million colour support) is
    " as good as GVim and can do separate underline colours and undercurls. In
    " full colour terminals that cannot do these things Vim and NeoVim should
    " safely degrade to underlines. There will be no special colour, but there is
    " no direct way to test for support of these features.
    if (has('termguicolors') && &termguicolors || has('gui_running'))  && ! g:jmin_no_underline
        " Set text to normal colours
        " Set all styles to undercurl
        let s:diagnosticunderlineerror_fg   = s:norm_fg
        let s:diagnosticunderlineerror_bg   = s:norm_bg
        let s:diagnosticunderlineerror_attr = { "gui": "undercurl", "cterm": "undercurl" }
        let s:diagnosticunderlinewarn_fg    = s:norm_fg
        let s:diagnosticunderlinewarn_bg    = s:norm_bg
        let s:diagnosticunderlinewarn_attr  = { "gui": "undercurl", "cterm": "undercurl" }
        let s:diagnosticunderlineinfo_fg    = s:norm_fg
        let s:diagnosticunderlineinfo_bg    = s:norm_bg
        let s:diagnosticunderlineinfo_attr  = { "gui": "undercurl", "cterm": "undercurl" }
        let s:diagnosticunderlinehint_fg    = s:norm_fg
        let s:diagnosticunderlinehint_bg    = s:norm_bg
        let s:diagnosticunderlinehint_attr  = { "gui": "undercurl", "cterm": "undercurl" }
        let s:diagnosticunderlineok_fg      = s:norm_fg
        let s:diagnosticunderlineok_bg      = s:norm_bg
        let s:diagnosticunderlineok_attr    = { "gui": "undercurl", "cterm": "undercurl" }
    endif
    let s:normalfloat_fg                = s:none
    let s:normalfloat_bg                = s:none
    let s:floatborder_fg                = s:none
    let s:floatborder_bg                = s:none

    let s:pmenu_fg                 = s:norm_fg
    let s:pmenu_bg                 = s:norm_bg
    let s:pmenu_attr               = { "cterm": "reverse", "gui": "reverse" }
    let s:pmenusel_fg              = s:norm_fg
    let s:pmenusel_bg              = s:norm_bg
    let s:pmenusel_attr            = s:none
    let s:pmenusbar_fg             = s:norm_fg
    let s:pmenusbar_bg             = s:none
    let s:pmenusbar_attr           = { "cterm": "reverse", "gui": "reverse" }
    let s:pmenuthumb_fg            = s:none
    let s:pmenuthumb_bg            = s:norm_bg
    let s:pmenuthumb_attr          = s:none

    let s:qfline_fg                = s:norm_fg
    let s:qfline_bg                = s:norm_bg
    let s:qfline_attr              = { "gui": "reverse", "cterm": "reverse" }

    let s:diffadd_fg               = s:norm_fg
    let s:diffadd_bg               = s:norm_bg
    let s:diffadd_attr             = { "gui": "reverse", "cterm": "reverse" }
    let s:diffchange_fg            = s:none
    let s:diffchange_bg            = s:none
    let s:diffdelete_fg            = s:norm_fg
    let s:diffdelete_bg            = s:norm_bg
    let s:diffdelete_attr          = { "gui": "reverse", "cterm": "reverse" }
    let s:difftext_fg              = s:norm_fg
    let s:difftext_bg              = s:norm_bg
    let s:difftext_attr            = { "gui": "reverse", "cterm": "reverse" }

    let s:difffile_fg        = s:none
    let s:difffile_bg        = s:none
    let s:difffile_attr      = s:bold
    let s:diffnewfile_fg     = s:none
    let s:diffnewfile_bg     = s:none
    let s:diffnewfile_attr   = s:bold
    let s:diffindexline_fg   = s:none
    let s:diffindexline_bg   = s:none
    let s:diffindexline_attr = s:bold
    let s:diffline_fg        = s:none
    let s:diffline_bg        = s:none
    let s:diffline_attr      = s:bold
    let s:diffsubname_fg     = s:none
    let s:diffsubname_bg     = s:none
    let s:diffsubname_attr   = s:bold
    let s:gitdiff_fg         = s:none
    let s:gitdiff_bg         = s:none
    let s:gitdiff_attr       = s:none
    let s:diffadded_fg       = s:none
    let s:diffadded_bg       = s:none
    let s:diffadded_attr     = s:gui_italic
    let s:diffremoved_fg     = s:none
    let s:diffremoved_bg     = s:none
    let s:diffremoved_attr   = s:gui_italic

    let s:gitkeyword_fg   = s:none
    let s:gitkeyword_bg   = s:none
    let s:gitkeyword_attr = s:bold
    let s:githash_fg      = s:none
    let s:githash_bg      = s:none
    let s:githash_attr    = s:bold
    let s:githead_fg      = s:none
    let s:githead_bg      = s:none
    let s:githead_attr    = s:none

    let s:gitgutteradd_fg          = s:norm_fg
    let s:gitgutterchange_fg       = s:norm_fg
    let s:gitgutterdelete_fg       = s:norm_fg
    let s:gitgutterchangedelete_fg = s:norm_fg

    let s:spellbad_fg              = s:none
    let s:spellbad_bg              = s:none
    let s:spellbad_attr            = s:underline
    if g:jmin_no_underline
        let s:spellbad_attr        = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:spellcap_fg              = s:none
    let s:spellcap_bg              = s:none
    let s:spellcap_attr            = s:underline
    if g:jmin_no_underline
        let s:spellcap_attr        = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:spelllocal_fg            = s:none
    let s:spelllocal_bg            = s:none
    let s:spelllocal_attr          = s:underline
    if g:jmin_no_underline
        let s:spelllocal_attr      = { "gui": "reverse", "cterm": "reverse" }
    endif
    let s:spellrare_fg             = s:none
    let s:spellrare_bg             = s:none
    let s:spellrare_attr           = s:underline
    if g:jmin_no_underline
        let s:spellrare_attr       = { "gui": "reverse", "cterm": "reverse" }
    endif

    let s:spellbad_guisp           = s:norm_fg
    let s:spellcap_guisp           = s:norm_fg
    let s:spelllocal_guisp         = s:norm_fg
    let s:spellrare_guisp          = s:norm_fg

    if (has('termguicolors') && &termguicolors || has('gui_running'))  && ! g:jmin_no_underline
        " Set all styles to undercurl
        let s:spellbad_attr    = { "gui": "undercurl", "cterm": "undercurl" }
        let s:spellcap_attr    = { "gui": "undercurl", "cterm": "undercurl" }
        let s:spelllocal_attr  = { "gui": "undercurl", "cterm": "undercurl" }
        let s:spellrare_attr   = { "gui": "undercurl", "cterm": "undercurl" }

        " Vim does not handle undercurl gracefully in most terminals. The best it
        " can do is substitute with underline. In some terminals undercurl does
        " nothing regardless of the termguicolors setting. Here I target Vim and
        " set cterm=underline.
        "
        " The only way I know of to target regular Vim is to target all but NeoVim.
        if ! has('nvim')
            " Set cterm styles to underline.
            let s:spellbad_attr    = { "gui": "undercurl", "cterm": "underline" }
            let s:spellcap_attr    = { "gui": "undercurl", "cterm": "underline" }
            let s:spelllocal_attr  = { "gui": "undercurl", "cterm": "underline" }
            let s:spellrare_attr   = { "gui": "undercurl", "cterm": "underline" }
        endif
    endif

    let s:sneak_fg          = s:norm_fg
    " These are their individual background colours
    let s:sneaklabelmask    = s:norm_bg
    let s:sneaktarget       = s:norm_bg
    let s:sneaklabeltarget  = s:norm_bg
    let s:sneakscope        = s:norm_bg

    " indent-guides
    let s:indent_guides_bg = s:norm_fg
endif



if &t_Co == 8 || g:term_colors == '8' || &t_Co == 16 || g:term_colors == '16' || g:jmin_16 == 1 || s:term == 'linux'
    "
    " Colours for 16 colour terminals
    "

    let s:norm_bg = s:color0
    let s:norm_fg = s:color7
    if g:jmin_contrast == 'low'
        " Only 1 shade of light grey, so it stays the same.
        let s:norm_fg = s:color7
    endif
    if g:jmin_contrast == 'high' || g:jmin_contrast == 'max'
        " Pure white.
        "
        " This fits the xterm default colours, although classic xterms were black
        " on white.
        let s:norm_fg = s:color15
    endif

    let s:bold_fg = s:norm_fg
    if g:jmin_colorize_bold
        "let s:bold_fg = s:color8
        let s:bold_fg = s:color15
    endif

    let s:comment_fg               = s:color8
    "let s:comment_attr             = s:none
    let s:comment_attr             = s:none
    "let s:todo                     = s:color10
    let s:todo_fg                  = s:comment_fg
    let s:todo_attr                = s:comment_attr
    let s:vim_comment_title_fg     = s:comment_fg
    let s:vim_comment_title_attr   = s:comment_attr
    let s:fold_fg                  = s:color8
    "let s:fold_attr                = { "gui": "italic", "cterm": "italic" }
    let s:fold_attr                = s:none
    let s:linenr                   = s:color8
    "let s:string                   = s:color14
    let s:string                   = s:color6
    let s:constant                 = s:string
    "let s:statement_fg             = s:norm_fg
    let s:statement_fg             = s:bold_fg
    let s:statement_attr           = s:bold
    let s:preproc_fg               = s:statement_fg
    let s:preproc_attr             = s:statement_attr
    let s:type_fg                  = s:statement_fg
    let s:type_attr                = s:statement_attr
    let s:special_fg               = s:statement_fg
    let s:special_attr             = s:statement_attr
    let s:html_fg                  = s:color8
    let s:html_h1_fg               = s:bold_fg
    let s:html_h1_attr             = s:bold
    let s:html_link_attr           = s:bold
    let s:html_bold_fg             = s:bold_fg
    let s:html_bold_attr           = s:bold
    let s:html_italic_attr         = s:bold

    let s:help_hypertext_jump_attr = s:bold

    " Dividers

    "let s:statusline_fg = s:bg
    "let s:statusline_bg = s:fg
    " NOTE: I had to set these two to explicit colours because my TransBG function
    " was messing up the active status line (fg ended up same as bg)—probably
    " because it sets the bg to NONE.
    let s:statusline_fg = s:norm_fg
    let s:statusline_bg = s:norm_bg
    let s:statusline_attr  = { "gui": "reverse", "cterm": "reverse" }

    let s:statusline_nc_bg = s:color8
    let s:statusline_nc_fg = s:color7
    let s:statusline_nc_attr = s:none
    let s:vertsplit = s:color8

    " Search

    let s:search_fg      = s:color11
    let s:search_bg      = s:color12
    let s:search_attr    = s:none
    let s:incsearch_fg   = s:search_fg
    let s:incsearch_bg   = s:search_bg
    let s:incsearch_attr = { "gui": "reverse", "cterm": "reverse" }

    " Misc

    "let s:cursorline_fg    = s:none
    let s:cursorline_fg    = s:norm_fg
    "let s:cursorline_bg    = s:color8
    "let s:cursorline_bg    = s:none
    let s:cursorline_bg    = s:norm_bg
    "let s:cursorline_attr  = s:none
    let s:cursorline_attr  = { "gui": "INVERSE", "cterm": "INVERSE" }
    let s:cursorim_fg      = s:color0
    let s:cursorim_bg      = s:color14
    let s:cursorim_attr    = s:none
    let s:colorcolumn_fg   = s:cursorline_fg
    let s:colorcolumn_bg   = s:cursorline_bg
    let s:colorcolumn_attr = s:cursorline_attr
    let s:error_fg         = s:color15
    let s:error_bg         = s:color1
    let s:error_attr       = s:none
    let s:errormsg_fg      = s:color1
    let s:errormsg_bg      = s:none
    let s:errormsg_attr    = s:none
    "let s:matchparen_fg    = s:color15
    "let s:matchparen_bg    = s:color4
    "let s:matchparen_attr  = s:none
    "let s:matchparen_fg    = s:norm_fg
    let s:matchparen_fg    = s:bold_fg
    let s:matchparen_bg    = s:norm_bg
    let s:matchparen_attr  = s:bold
    "let s:directory       = s:color5
    let s:directory        = s:norm_fg
    let s:symlink          = s:norm_fg
    let s:nontext_fg       = s:color8
    let s:nontext_bg       = s:none
    let s:signcolumn       = s:color8
    "let s:modemsg          = s:color5
    let s:modemsg          = s:norm_fg
    "let s:modemsg_attr     = s:bold
    let s:modemsg_attr     = s:none
    "let s:moremsg          = s:color5
    "let s:moremsg          = s:norm_fg
    let s:moremsg          = s:bold_fg
    let s:moremsg_attr     = s:bold
    let s:question         = s:color5
    let s:warningmsg_fg    = s:color3
    let s:warningmsg_bg    = s:none
    let s:warningmsg_attr  = s:none
    let s:visual_fg        = s:norm_fg
    let s:visual_bg        = s:norm_bg
    let s:visual_attr      = { "gui": "reverse", "cterm": "reverse" }
    let s:visualnos_fg     = s:visual_fg
    let s:visualnos_bg     = s:visual_bg
    let s:visualnos_attr   = { "gui": "reverse", "cterm": "reverse" }
    " Unprintable characters: text displayed differently from what it really is.
    " But not 'listchars' whitespace.
    let s:specialkey       = s:color7
    "let s:tabline_fg       = s:norm_fg
    "let s:tabline_bg       = s:norm_bg
    "let s:tabline_attr     = { "gui": "reverse", "cterm": "reverse" }
    let s:tabline_fg       = s:statusline_nc_fg
    let s:tabline_bg       = s:statusline_nc_bg
    let s:tabline_attr     = s:statusline_nc_attr
    "let s:tablinesel_fg    = s:none
    let s:tablinesel_fg    = s:bold_fg
    let s:tablinesel_bg    = s:none
    let s:tablinesel_attr  = s:none
    "let s:tablinesel_attr  = s:bold
    "let s:tablinefill      = s:norm_fg
    let s:tablinefill      = s:statusline_nc_bg
    let s:underlined_attr  = s:bold
    " Only NeoVim Diagnostics has these message types
    let s:infomsg_fg       = s:color14
    let s:infomsg_bg       = s:none
    let s:infomsg_attr     = s:none
    let s:hintmsg_fg       = s:color6
    let s:hintmsg_bg       = s:none
    let s:hintmsg_attr     = s:none
    let s:okmsg_fg         = s:color2
    let s:okmsg_bg         = s:none
    let s:okmsg_attr       = s:none

    " Diagnostics

    let s:diagnosticerror_fg   = s:errormsg_fg
    let s:diagnosticerror_bg   = s:errormsg_bg
    let s:diagnosticerror_attr = s:errormsg_attr
    let s:diagnosticwarn_fg    = s:warningmsg_fg
    let s:diagnosticwarn_bg    = s:warningmsg_bg
    let s:diagnosticwarn_attr  = s:warningmsg_attr
    let s:diagnosticinfo_fg    = s:infomsg_fg
    let s:diagnosticinfo_bg    = s:infomsg_bg
    let s:diagnosticinfo_attr  = s:infomsg_attr
    let s:diagnostichint_fg    = s:hintmsg_fg
    let s:diagnostichint_bg    = s:hintmsg_bg
    let s:diagnostichint_attr  = s:hintmsg_attr
    let s:diagnosticok_fg      = s:okmsg_fg
    let s:diagnosticok_bg      = s:okmsg_bg
    let s:diagnosticok_attr    = s:okmsg_attr
    " Settings for terminals.
    "
    " The terminal cannot render undercurls, so it adds underlines instead. I
    " add underlines below to match the GUI style.
    "
    " The foreground colours will apply to the text and the underline.
    let s:diagnosticunderlineerror_fg   = s:errormsg_fg
    let s:diagnosticunderlineerror_bg   = s:errormsg_bg
    let s:diagnosticunderlineerror_attr = s:none
    let s:diagnosticunderlinewarn_fg    = s:warningmsg_fg
    let s:diagnosticunderlinewarn_bg    = s:warningmsg_bg
    let s:diagnosticunderlinewarn_attr  = s:none
    let s:diagnosticunderlineinfo_fg    = s:infomsg_fg
    let s:diagnosticunderlineinfo_bg    = s:infomsg_bg
    let s:diagnosticunderlineinfo_attr  = s:none
    let s:diagnosticunderlinehint_fg    = s:hintmsg_fg
    let s:diagnosticunderlinehint_bg    = s:hintmsg_bg
    let s:diagnosticunderlinehint_attr  = s:none
    let s:diagnosticunderlineok_fg      = s:okmsg_fg
    let s:diagnosticunderlineok_bg      = s:okmsg_bg
    let s:diagnosticunderlineok_attr    = s:none
    let s:normalfloat_fg                = s:none
    let s:normalfloat_bg                = s:none
    let s:floatborder_fg                = s:vertsplit 
    let s:floatborder_bg                = s:none

    " Pmenu
    let s:pmenu_fg                 = s:norm_fg
    let s:pmenu_bg                 = s:norm_bg
    let s:pmenu_attr               = { "cterm": "reverse", "gui": "reverse" }
    let s:pmenusel_fg              = s:color0
    let s:pmenusel_bg              = s:color14
    let s:pmenusel_attr            = s:none
    let s:pmenusbar_fg             = s:none
    let s:pmenusbar_bg             = s:color8
    let s:pmenusbar_attr           = s:none
    let s:pmenuthumb_fg            = s:none
    let s:pmenuthumb_bg            = s:color7
    let s:pmenuthumb_attr          = s:none


    " Quickfix Window
    let s:qffilename  = s:fold_fg
    let s:qfseparator = s:norm_fg
    let s:qflinenr    = s:linenr
    "let s:qflinenr      = s:comment_fg
    let s:qflinenr_attr = s:none
    "let s:qflinenr_attr = s:comment_attr
    let s:qfline_fg   = s:cursorline_fg
    let s:qfline_bg   = s:cursorline_bg
    let s:qfline_attr = s:cursorline_attr

    " Diff
    let s:diffadd_fg           = s:none
    let s:diffadd_bg           = s:color2
    let s:diffadd_attr         = s:none
    let s:diffchange_fg        = s:none
    let s:diffchange_bg        = s:none
    let s:diffdelete_fg        = s:color8
    let s:diffdelete_bg        = s:color0
    let s:diffdelete_attr      = s:none
    let s:difftext_fg          = s:none
    let s:difftext_bg          = s:diffadd_bg
    let s:difftext_attr        = s:none

    "let s:difffile_fg        = s:none
    let s:difffile_fg        = s:bold_fg
    let s:difffile_bg        = s:none
    let s:difffile_attr      = s:bold
    "let s:diffnewfile_fg     = s:none
    let s:diffnewfile_fg     = s:bold_fg
    let s:diffnewfile_bg     = s:none
    let s:diffnewfile_attr   = s:bold
    "let s:diffindexline_fg   = s:none
    let s:diffindexline_fg   = s:bold_fg
    let s:diffindexline_bg   = s:none
    let s:diffindexline_attr = s:bold
    "let s:diffline_fg        = s:none
    let s:diffline_fg        = s:bold_fg
    let s:diffline_bg        = s:none
    let s:diffline_attr      = s:bold
    "let s:diffsubname_fg     = s:none
    let s:diffsubname_fg     = s:bold_fg
    let s:diffsubname_bg     = s:none
    let s:diffsubname_attr   = s:bold
    let s:gitdiff_fg         = s:none
    let s:gitdiff_bg         = s:none
    let s:gitdiff_attr       = s:none
    let s:diffadded_fg       = s:color2
    let s:diffadded_bg       = s:none
    let s:diffadded_attr     = s:none
    let s:diffremoved_fg     = s:comment_fg
    let s:diffremoved_bg     = s:none
    let s:diffremoved_attr   = s:none

    "let s:gitkeyword_fg   = s:none
    let s:gitkeyword_fg   = s:bold_fg
    let s:gitkeyword_bg   = s:none
    let s:gitkeyword_attr = s:bold
    "let s:githash_fg      = s:none
    let s:githash_fg      = s:bold_fg
    let s:githash_bg      = s:none
    let s:githash_attr    = s:bold
    let s:githead_fg      = s:none
    let s:githead_bg      = s:none
    let s:githead_attr    = s:none

    let s:gitgutteradd_fg      = s:color2
    let s:gitgutterchange_fg   = s:color3
    let s:gitgutterdelete_fg   = s:color1
    let s:gitgutterchangedelete_fg = s:gitgutterchange_fg

    " Spelling

    " Settings for terminals.
    "
    " The default framebuffer terminal cannot render undercurls or underlines.
    " If you try to set "underline" it sets a cyan foreground colour instead.
    " If you set it to "NONE" it does reverse. If you set it to reverse it
    " doesn’t mark all spelling errors.
    "
    let s:spellbad_fg      = s:color1
    let s:spellbad_bg      = s:norm_bg
    let s:spellbad_attr    = s:none
    let s:spellcap_fg      = s:color4
    let s:spellcap_bg      = s:norm_bg
    let s:spellcap_attr    = s:none
    let s:spelllocal_fg    = s:color6
    let s:spelllocal_bg    = s:norm_bg
    let s:spelllocal_attr  = s:none
    let s:spellrare_fg     = s:color13
    let s:spellrare_bg     = s:norm_bg
    let s:spellrare_attr   = s:none

    " These will be colours for undercurls
    "let s:spellbad_guisp   = "1"
    "let s:spellcap_guisp   = "4"
    "let s:spelllocal_guisp = "6"
    "let s:spellrare_guisp  = "8"
    let s:spellbad_guisp   = s:spellbad_fg
    let s:spellcap_guisp   = s:spellcap_fg
    let s:spelllocal_guisp = s:spelllocal_fg
    let s:spellrare_guisp  = s:spellrare_fg

    " Sneak jumpsearch plugin
    "
    " They all use the same foreground colour
    let s:sneak_fg = s:color0
    " These are their individual background colours
    let s:sneaklabelmask = s:color14
    let s:sneaktarget = s:color14
    let s:sneaklabeltarget = s:color14
    let s:sneakscope = s:color14

    " indent-guides
    " You can only set the first 0 terminal colours as background colours in
    " the default framebuffer terminal.
    let s:indent_guides_bg = s:color7

    if g:jmin_2color
        let s:statusline_fg      = s:norm_fg
        let s:statusline_bg      = s:norm_bg
        let s:statusline_attr    = { "gui": "reverse", "cterm": "reverse" }

        let s:statusline_nc_bg   = s:norm_bg
        let s:statusline_nc_fg   = s:norm_fg
        let s:statusline_nc_attr = s:none
        let s:vertsplit          = s:norm_fg

        let s:search_fg          = s:norm_fg
        let s:search_bg          = s:norm_bg
        let s:search_attr        = { "gui": "reverse", "cterm": "reverse" }
        let s:incsearch_fg       = s:search_fg
        let s:incsearch_bg       = s:search_bg
        let s:incsearch_attr     = { "gui": "bold,reverse", "cterm": "bold,reverse" }
        if g:jmin_no_bold
            let s:incsearch_attr     = { "gui": "reverse", "cterm": "reverse" }
        endif

        let s:cursorline_fg      = s:norm_fg
        let s:cursorline_bg      = s:norm_bg
        let s:cursorline_attr    = { "gui": "reverse", "cterm": "reverse" }
        let s:cursorim_fg        = s:norm_fg
        let s:cursorim_bg        = s:norm_bg
        let s:cursorim_attr      = { "gui": "reverse", "cterm": "reverse" }
        let s:colorcolumn_fg     = s:cursorline_fg
        let s:colorcolumn_bg     = s:cursorline_bg
        let s:colorcolumn_attr   = s:cursorline_attr
        let s:error_fg           = s:norm_fg
        let s:error_bg           = s:norm_bg
        let s:error_attr         = { "gui": "reverse", "cterm": "reverse" }
        let s:errormsg_fg        = s:norm_fg
        let s:errormsg_bg        = s:norm_bg
        let s:errormsg_attr      = { "gui": "reverse", "cterm": "reverse" }
        let s:matchparen_fg      = s:norm_fg
        let s:matchparen_bg      = s:norm_bg
        let s:matchparen_attr    = s:bold
        let s:directory          = s:norm_fg
        let s:symlink            = s:norm_fg
        let s:nontext_fg         = s:norm_fg
        let s:nontext_bg         = s:none
        let s:signcolumn         = s:norm_fg
        let s:modemsg            = s:norm_fg
        "let s:modemsg_attr       = s:bold
        let s:modemsg_attr       = s:none
        let s:moremsg            = s:norm_fg
        let s:moremsg_attr       = s:bold
        let s:question           = s:norm_fg
        let s:warningmsg_fg      = s:norm_fg
        let s:warningmsg_bg      = s:none
        let s:warningmsg_attr    = s:none
        let s:visual_fg          = s:norm_fg
        let s:visual_bg          = s:norm_bg
        let s:visual_attr        = { "gui": "reverse", "cterm": "reverse" }
        let s:visualnos_fg       = s:visual_fg
        let s:visualnos_bg       = s:visual_bg
        let s:visualnos_attr     = { "gui": "reverse", "cterm": "reverse" }
        let s:specialkey         = s:norm_fg
        let s:tabline_fg         = s:norm_fg
        let s:tabline_bg         = s:norm_bg
        let s:tabline_attr       = { "gui": "reverse", "cterm": "reverse" }
        let s:tablinesel_fg      = s:none
        let s:tablinesel_bg      = s:none
        let s:tablinesel_attr    = s:none
        "let s:tablinesel_attr    = s:bold
        let s:tablinefill        = s:norm_fg
        " Only NeoVim Diagnostics has these message types
        let s:infomsg_fg         = s:norm_fg
        let s:infomsg_bg         = s:norm_bg
        let s:infomsg_attr       = s:none
        let s:hintmsg_fg         = s:norm_fg
        let s:hintmsg_bg         = s:norm_bg
        let s:hintmsg_attr       = s:none
        let s:okmsg_fg           = s:norm_fg
        let s:okmsg_bg           = s:norm_bg
        let s:okmsg_attr         = s:none

        " Diagnostics

        let s:diagnosticerror_fg   = s:errormsg_fg
        let s:diagnosticerror_bg   = s:errormsg_bg
        let s:diagnosticerror_attr = { "gui": "reverse", "cterm": "reverse" }
        let s:diagnosticwarn_fg    = s:warningmsg_fg
        let s:diagnosticwarn_bg    = s:warningmsg_bg
        let s:diagnosticwarn_attr  = { "gui": "reverse", "cterm": "reverse" }
        let s:diagnosticinfo_fg    = s:infomsg_fg
        let s:diagnosticinfo_bg    = s:infomsg_bg
        let s:diagnosticinfo_attr  = s:none
        let s:diagnostichint_fg    = s:hintmsg_fg
        let s:diagnostichint_bg    = s:hintmsg_bg
        let s:diagnostichint_attr  = s:none
        let s:diagnosticok_fg      = s:okmsg_fg
        let s:diagnosticok_bg      = s:okmsg_bg
        let s:diagnosticok_attr    = s:none
        " Settings for terminals.
        "
        " The terminal cannot render undercurls, so it adds underlines instead. I
        " add underlines below to match the GUI style.
        "
        " The foreground colours will apply to the text and the underline.
        let s:diagnosticunderlineerror_fg   = s:errormsg_fg
        let s:diagnosticunderlineerror_bg   = s:errormsg_bg
        let s:diagnosticunderlineerror_attr = { "gui": "reverse", "cterm": "reverse" }
        let s:diagnosticunderlinewarn_fg    = s:warningmsg_fg
        let s:diagnosticunderlinewarn_bg    = s:warningmsg_bg
        let s:diagnosticunderlinewarn_attr  = s:none
        let s:diagnosticunderlineinfo_fg    = s:infomsg_fg
        let s:diagnosticunderlineinfo_bg    = s:infomsg_bg
        let s:diagnosticunderlineinfo_attr  = s:none
        let s:diagnosticunderlinehint_fg    = s:hintmsg_fg
        let s:diagnosticunderlinehint_bg    = s:hintmsg_bg
        let s:diagnosticunderlinehint_attr  = s:none
        let s:diagnosticunderlineok_fg      = s:okmsg_fg
        let s:diagnosticunderlineok_bg      = s:okmsg_bg
        let s:diagnosticunderlineok_attr    = s:none
        let s:normalfloat_fg                = s:none
        let s:normalfloat_bg                = s:none
        let s:floatborder_fg                = s:none
        let s:floatborder_bg                = s:none

        let s:pmenu_fg                 = s:norm_fg
        let s:pmenu_bg                 = s:norm_bg
        let s:pmenu_attr               = { "cterm": "reverse", "gui": "reverse" }
        let s:pmenusel_fg              = s:norm_fg
        let s:pmenusel_bg              = s:norm_bg
        let s:pmenusel_attr            = s:none
        let s:pmenusbar_fg             = s:norm_fg
        let s:pmenusbar_bg             = s:none
        let s:pmenusbar_attr           = { "cterm": "reverse", "gui": "reverse" }
        let s:pmenuthumb_fg            = s:none
        let s:pmenuthumb_bg            = s:norm_bg
        let s:pmenuthumb_attr          = s:none

        let s:qfline_fg                = s:norm_fg
        let s:qfline_bg                = s:norm_bg
        let s:qfline_attr              = { "gui": "reverse", "cterm": "reverse" }

        let s:diffadd_fg               = s:norm_fg
        let s:diffadd_bg               = s:norm_bg
        let s:diffadd_attr             = { "gui": "reverse", "cterm": "reverse" }
        let s:diffchange_fg            = s:none
        let s:diffchange_bg            = s:none
        let s:diffdelete_fg            = s:norm_fg
        let s:diffdelete_bg            = s:norm_bg
        let s:diffdelete_attr          = { "gui": "reverse", "cterm": "reverse" }
        let s:difftext_fg              = s:norm_fg
        let s:difftext_bg              = s:norm_bg
        let s:difftext_attr            = { "gui": "reverse", "cterm": "reverse" }

        let s:difffile_fg        = s:none
        let s:difffile_bg        = s:none
        let s:difffile_attr      = s:bold
        let s:diffnewfile_fg     = s:none
        let s:diffnewfile_bg     = s:none
        let s:diffnewfile_attr   = s:bold
        let s:diffindexline_fg   = s:none
        let s:diffindexline_bg   = s:none
        let s:diffindexline_attr = s:bold
        let s:diffline_fg        = s:none
        let s:diffline_bg        = s:none
        let s:diffline_attr      = s:bold
        let s:diffsubname_fg     = s:none
        let s:diffsubname_bg     = s:none
        let s:diffsubname_attr   = s:bold
        let s:gitdiff_fg         = s:none
        let s:gitdiff_bg         = s:none
        let s:gitdiff_attr       = s:none
        let s:diffadded_fg       = s:none
        let s:diffadded_bg       = s:none
        let s:diffadded_attr     = s:none
        let s:diffremoved_fg     = s:none
        let s:diffremoved_bg     = s:none
        let s:diffremoved_attr   = s:none

        let s:gitkeyword_fg   = s:none
        let s:gitkeyword_bg   = s:none
        let s:gitkeyword_attr = s:bold
        let s:githash_fg      = s:none
        let s:githash_bg      = s:none
        let s:githash_attr    = s:bold
        let s:githead_fg      = s:none
        let s:githead_bg      = s:none
        let s:githead_attr    = s:none

        let s:gitgutteradd_fg          = s:norm_fg
        let s:gitgutterchange_fg       = s:norm_fg
        let s:gitgutterdelete_fg       = s:norm_fg
        let s:gitgutterchangedelete_fg = s:norm_fg

        let s:spellbad_fg              = s:norm_fg
        let s:spellbad_bg              = s:norm_bg
        let s:spellbad_attr            = { "gui": "reverse", "cterm": "reverse" }
        let s:spellcap_fg              = s:norm_fg
        let s:spellcap_bg              = s:norm_bg
        let s:spellcap_attr            = { "gui": "reverse", "cterm": "reverse" }
        let s:spelllocal_fg            = s:norm_fg
        let s:spelllocal_bg            = s:norm_bg
        let s:spelllocal_attr          = { "gui": "reverse", "cterm": "reverse" }
        let s:spellrare_fg             = s:norm_fg
        let s:spellrare_bg             = s:norm_bg
        let s:spellrare_attr           = { "gui": "reverse", "cterm": "reverse" }

        " Disable all of these
        let s:spellbad_guisp       = s:norm_fg
        let s:spellcap_guisp       = s:norm_fg
        let s:spelllocal_guisp     = s:norm_fg
        let s:spellrare_guisp      = s:norm_fg

        let s:sneak_fg          = s:norm_fg
        " These are their individual background colours
        let s:sneaklabelmask    = s:norm_bg
        let s:sneaktarget       = s:norm_bg
        let s:sneaklabeltarget  = s:norm_bg
        let s:sneakscope        = s:norm_bg

        " indent-guides
        let s:indent_guides_bg = s:norm_fg
    endif
endif



"
" Helper Functions
"

" Toggle comment fading
function! JMinComments()
    if g:jmin_hlcomments
        let g:jmin_hlcomments = 0
        call s:noh("Comment")
        call s:noh("Todo")
        call s:noh("vimCommentTitle")
    else
        let g:jmin_hlcomments = 1
        call s:h("Comment",        {"fg": s:comment_fg, "attr": s:comment_attr})
        call s:h("Todo", {"fg": s:todo_fg, "attr": s:todo_attr})
        "hi! link Todo Comment
        call s:h("vimCommentTitle", {"fg": s:vim_comment_title_fg, "attr": s:vim_comment_title_attr})
        "hi! link vimCommentTitle Comment
    end
endfunction
command! JMinComments call JMinComments()
execute "map" g:jmin_toggle_comments_shortcut ":JMinComments<enter>"

" Toggle string highlighting
function! JMinStrings()
    if g:jmin_hlstrs
        let g:jmin_hlstrs = 0
        call s:noh("String")
        call s:noh("Character")
    else
        let g:jmin_hlstrs = 1
        call s:h("String",        {"fg": s:string})
        call s:h("Character",        {"fg": s:string})
        " These are normally linked to nothing. I’ll highlight them as
        " strings.
        hi link markdownCode String
        hi link markdownCodeBlock String
    end
endfunction
command! JMinStrings call JMinStrings()
execute "map" g:jmin_toggle_strings_shortcut ":JMinStrings<enter>"

"
" Toggle constant highlighing
"
" Changing the Constant group should also change Number, Boolean,
" and Float, which should be linked to it by default (and re‐linked by
" jmin/reset.vim). String and Character are independently set and toggled by
" JMinStrings().
"
function! JMinNumbers()
    if g:jmin_hlnum
        let g:jmin_hlnum = 0
        call s:noh("Constant")
    else
        let g:jmin_hlnum = 1
        call s:h("Constant",        {"fg": s:constant})
    end
endfunction
command! JMinNumbers call JMinNumbers()
execute "map" g:jmin_toggle_numbers_shortcut ":JMinNumbers<enter>"

" Toggle builtin language keyword highlighitng
function! JMinKeyword()
    if g:jmin_hlkeyword
        let g:jmin_hlkeyword = 0
        call s:noh("Statement")
        call s:noh("PreProc")
        call s:noh("Type")
        call s:noh("Special")
    else
        let g:jmin_hlkeyword = 1
        call s:h("Statement", {"fg": s:statement_fg, "attr": s:statement_attr})
        call s:h("PreProc",   {"fg": s:preproc_fg, "attr": s:preproc_attr})
        call s:h("Type",      {"fg": s:type_fg, "attr": s:type_attr})
        call s:h("Special",   {"fg": s:special_fg, "attr": s:special_attr})
    end
endfunction
command! JMinKeyword call JMinKeyword()
execute "map" g:jmin_toggle_keywords_shortcut ":JMinKeyword<enter>"

" Toggle extra formatting
function! JMinExtraFmt()
    if g:jmin_extrafmt
        let g:jmin_extrafmt = 0
        call s:h("htmlH1", { "attr": s:none })
        call s:h("htmlLink", { "attr": s:none })
        call s:h("htmlBold", { "attr": s:none })
        call s:h("htmlItalic", { "attr": s:none })
        call s:h("mkdHeading", { "attr": s:none })
        call s:h("Title", { "attr": s:none })
    else
        let g:jmin_extrafmt = 1
        call s:h("htmlH1", { "fg": s:html_h1_fg, "attr": s:html_h1_attr })
        call s:h("htmlLink", { "attr": s:html_link_attr })
        call s:h("htmlBold", { "fg": s:html_bold_fg, "attr": s:html_bold_attr })
        call s:h("htmlItalic", { "attr": s:html_italic_attr })
        call s:h("mkdHeading", { "fg": s:html_h1_fg, "attr": s:html_h1_attr })
        call s:h("Title", { "fg": s:html_h1_fg, "attr": s:html_h1_attr })
    end
endfunction
command! JMinExtraFmt call JMinExtraFmt()
execute "map" g:jmin_toggle_extrafmt_shortcut ":JMinExtraFmt<enter>"

" Toggle fold fading
function! JMinFolds()
    if g:jmin_hlfolds
        let g:jmin_hlfolds = 0
        call s:noh("Folded")
        call s:noh("FoldColumn")
    else
        let g:jmin_hlfolds = 1
        call s:h("Folded",        {"fg": s:fold_fg, "attr": s:fold_attr})
        call s:h("FoldColumn",        {"fg": s:fold_fg, "attr": s:fold_attr})
    end
endfunction
command! JMinFolds call JMinFolds()
execute "map" g:jmin_toggle_folds_shortcut ":JMinFolds<enter>"

" Toggle line number fading
function! JMinLineNumbers()
    if g:jmin_hllinenumbers
        let g:jmin_hllinenumbers = 0
        call s:noh("LineNr")
    else
        let g:jmin_hllinenumbers = 1
        call s:h("LineNr",        {"fg": s:linenr})
    end
endfunction
command! JMinLineNumbers call JMinLineNumbers()
execute "map" g:jmin_toggle_line_numbers_shortcut ":JMinLineNumbers<enter>"

" Toggle HTML tag fading
" Also does XML tags
function! JMinHTMLTags()
    if g:jmin_hlhtml
        let g:jmin_hlhtml = 0
        call s:noh("htmlTag")
        call s:noh("htmlTagName")
        call s:noh("htmlSpecialTagName")
        call s:noh("htmlArg")
        call s:noh("htmlString")
        call s:noh("htmlEndTag")
        call s:noh("markdownLinkTextDelimiter")
        call s:noh("markdownLinkDelimiter")
        call s:noh("markdownUrl")
        call s:noh("markdownCodeDelimiter")
        call s:noh("xmlTag")
        call s:noh("xmlTagName")
        call s:noh("xmlNamespace")
        call s:noh("xmlAttrib")
        call s:noh("xmlAttribPunct")
        call s:noh("xmlEqual")
        call s:noh("xmlEndTag")
    else
        let g:jmin_hlhtml = 1
        call s:h("htmlTag", {"fg": s:html_fg})
        call s:h("htmlTagName", {"fg": s:html_fg})
        call s:h("htmlSpecialTagName", {"fg": s:html_fg})
        call s:h("htmlArg", {"fg": s:html_fg})
        call s:h("htmlString", {"fg": s:html_fg})
        call s:h("htmlEndTag", {"fg": s:html_fg})
        call s:h("markdownLinkTextDelimiter", {"fg": s:html_fg})
        call s:h("markdownLinkDelimiter", {"fg": s:html_fg})
        call s:h("markdownUrl", {"fg": s:html_fg})
        call s:h("markdownCodeDelimiter", {"fg": s:html_fg})
        call s:h("xmlTag", {"fg": s:html_fg})
        call s:h("xmlTagName", {"fg": s:html_fg})
        call s:h("xmlNamespace", {"fg": s:html_fg})
        call s:h("xmlAttrib", {"fg": s:html_fg})
        call s:h("xmlAttribPunct", {"fg": s:html_fg})
        call s:h("xmlEqual", {"fg": s:html_fg})
        call s:h("xmlEndTag", {"fg": s:html_fg})
    end
endfunction
command! JMinHTML call JMinHTMLTags()
execute "map" g:jmin_toggle_html_shortcut ":JMinHTML<enter>"

" Toggle Quickfox Window highlighting
function! JMinQuickfix()
    if g:jmin_hlquickfix
        let g:jmin_hlquickfix = 0
        call s:noh("qfFileName")
        call s:noh("qfSeparator")
        call s:h("qfLineNr", { "attr": s:qflinenr_attr, })
    else
        let g:jmin_hlquickfix = 1
        call s:h("qfFileName", {"fg": s:qffilename})
        call s:h("qfSeparator", { "fg": s:qfseparator, })
        call s:h("qfLineNr",   {"fg": s:qflinenr, "attr": s:qflinenr_attr })
    end
endfunction
command! JMinQuickfix call JMinQuickfix()
execute "map" g:jmin_toggle_quickfix_shortcut ":JMinQuickfix<enter>"

" Only try to define this if it does not already exist, otherwise we could be
" inside this function already because it reloads this colorscheme.
if !exists("*JMinTerm")
    function JMinTerm()
        if g:jmin_16
            let g:jmin_16 = 0
        else
            let g:jmin_16 = 1
        end
        execute "colorscheme" g:colors_name
    endfunction
    command! JMinTerm call JMinTerm()
    execute "map" g:jmin_toggle_16color_terminal_shortcut ":JMinTerm<enter>"
endif

" Only try to define this if it does not already exist, otherwise we could be
" inside this function already because it reloads this colorscheme.
if !exists("*JMin2Color")
    function JMin2Color()
        if g:jmin_2color
            let g:jmin_2color = 0
        else
            let g:jmin_2color = 1
        end
        execute "colorscheme" g:colors_name
    endfunction
    command! JMin2Color call JMin2Color()
    execute "map" g:jmin_toggle_2color_shortcut ":JMin2Color<enter>"
endif


"
" Apply colour variables
"

"
" s:h — set highlight group using variables
"
" Params:
"
"   fg: dictionary with gui and cterm colour attributes
"   bg: dictionary with gui and cterm colour attributes
"   guisp: dictionary with gui and cterm colour attributes, cterm attribute is
"       ignored. Uses the same format as the other colours for ease of use.
"   attr: dictionary with gui and cterm attributes. See :h attr-list
"
" All params are optional. Missing params will be set to NONE.
"
" Based on https://github.com/noahfrederick/vim-hemisu/
"
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui     : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui     : "NONE")
    \ "guisp="   (has_key(a:style, "guisp") ? a:style.guisp.gui  : "NONE")
    \ "gui="     (has_key(a:style, "attr")  ? a:style.attr.gui   : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm   : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm   : "NONE")
    \ "cterm="   (has_key(a:style, "attr")  ? a:style.attr.cterm : "NONE")
endfunction

"
" s:hmod — set parts of highlight group using variables
"
" Params:
"
"   fg: dictionary with gui and cterm colour attributes
"   bg: dictionary with gui and cterm colour attributes
"   guisp: dictionary with gui and cterm colour attributes, cterm attribute is
"       ignored. Uses the same format as the other colours for ease of use.
"   attr: dictionary with gui and cterm attributes. See :h attr-list
"
" All params are optional. Missing params will not be set.
"
function! s:hmod(group, style)
  if has_key(a:style, "fg") && has_key(a:style.fg, "gui")
      execute "highlight" a:group "guifg=" a:style.fg.gui
  endif
  if has_key(a:style, "bg") && has_key(a:style.fg, "gui")
      execute "highlight" a:group "guibg=" a:style.bg.gui
  endif
  if has_key(a:style, "guisp") && has_key(a:style.guisp, "gui")
      execute "highlight" a:group "guisp=" a:style.guisp.gui
  endif
  if has_key(a:style, "attr") && has_key(a:style.attr, "gui")
      execute "highlight" a:group "gui=" a:style.attr.gui
  endif
  if has_key(a:style, "fg") && has_key(a:style.fg, "cterm")
      execute "highlight" a:group "ctermfg=" a:style.fg.cterm
  endif
  if has_key(a:style, "bg") && has_key(a:style.bg, "cterm")
      execute "highlight" a:group "ctermbg=" a:style.bg.cterm
  endif
  if has_key(a:style, "attr") && has_key(a:style.attr, "cterm")
      execute "highlight" a:group "cterm=" a:style.attr.cterm
  endif
endfunction

" Takes only a highlight group name and sets all attributes to NONE, ie. sets
" them to match the normal highlight group.
function! s:noh(group)
    "call s:h(a:group, {})
    "call s:h(a:group,        {"bg": s:norm_bg, "fg": s:norm_fg, "attr": { "gui": "NONE", "cterm": "NONE" },})
    call s:h(a:group,        {"bg": s:none, "fg": s:norm_fg, "attr": { "gui": "NONE", "cterm": "NONE" },})
endfunction

" Set both backgrounds to bg and both foregrounds to fg.
function! s:default(group)
    call s:h(a:group, {"fg": {"gui": "fg", "cterm": "fg"}, "bg": {"gui": "bg", "cterm": "bg"}})
    "call s:h(a:group, {"fg": s:norm_fg, "bg": s:norm_bg})
endfunction


call s:h("Normal",        {"bg": s:norm_bg, "fg": s:norm_fg})

" TODO: Many of these groups are linked to the basic syntax groups and
" therefore do not need to be specified so long as their default links are
" restored properly (runtime! colors/jmin/reset.vim should do that). For
" efficiency, and to not break the default links (so as to not mess up other
" color schemes that depend on them), remove the unnecessary highlight (or no
" highlight) declarations below.

call s:h("helpHyperTextJump", { "attr": s:help_hypertext_jump_attr })

" Faded
"
" Whitespace should be linked to NonText.
call s:h("NonText", {"fg": s:nontext_fg, "bg": s:nontext_bg})
call s:h("EndOfBuffer", {"fg": s:nontext_fg, "bg": s:nontext_bg})

" This seems to be the only way to reliably set the highlighting for the
" Conceal group (the character shown in place of concealed text). The
" ColorScheme autocmd seems to have no effect unless you set this autocmd from
" within a colorscheme file. I believe this is because the indentLine plugin
" sets it in an autocmd for `BufRead,BufNewFile,ColorScheme,Syntax`.
" Thankfully, these autocmd seem to override that one.
"autocmd WinEnter,BufEnter,BufRead,FileType,ColorScheme * hi! link Conceal NonText
" Changed to link to Normal because I am no longer using it to replace
" comments with a conceal character.
"autocmd WinEnter,BufEnter,BufRead,FileType,ColorScheme * hi! link Conceal Normal
"
" Update: It was the indentLine plugin overriding our setting. For some reason
" indentLine no longer seems to be setting an autocmd to set the highlight
" group even though it’s supposed to. The autocmd we were setting here would
" override the one set by indentLine, but it’s better to not have one at all
" so we don’t interfere with other colorschemes.
"
" Update 2: I was wrong. indentLine is setting an autocmd to set this and we
" must—unfortunately—set our own to override it.
"
" Update 3: I made a local fork of indentLine that does not override the
" Conceal group so that colorschemes once again have full control over it.
"hi! link Conceal NonText
call s:h("Conceal", { "fg": s:comment_fg })

call s:h("SignColumn", {"fg": s:signcolumn})
call s:h("SpecialKey", {"fg": s:specialkey})
call s:h("StatusLine", {"fg": s:statusline_fg, "bg": s:statusline_bg, "attr": s:statusline_attr})
call s:h("StatusLineNC", { "fg": s:statusline_nc_fg, "bg": s:statusline_nc_bg, "attr": s:statusline_nc_attr })
" VertSplit is used in Vim. Only the background colour matters.
call s:h("VertSplit", {"bg": s:vertsplit})
" VertSplit is used in Neovim for the same thing. fg and bg matter. fg is a
" vertical bar.
call s:h("WinSeparator", {"fg": s:vertsplit})

" Highlighted
call s:h("CursorColumn", { "fg": s:cursorline_fg, "bg": s:cursorline_bg, "attr": s:cursorline_attr })
call s:h("CursorLine", { "fg": s:cursorline_fg, "bg": s:cursorline_bg, "attr": s:cursorline_attr })
call s:noh("CursorLineNr")
" Do not unhighlight the cursor. The terminal sets its own color. Running
" jmin/reset.vim at the top sets the GUI colors to their opposite Normal
" colors (fg = norm_bg, bg = norm_fg). Seting `gui=INVERSE` would do the same
" thing, but it works. Calling s:noh("Cursor") would make the cursor
" invisible in GVim or GNVim (if one is ever made).
"call s:noh("Cursor")
call s:h("CursorIM", {"fg": s:cursorim_fg, "bg": s:cursorim_bg, "attr": s:cursorim_attr })
call s:h("ColorColumn", { "fg": s:colorcolumn_fg, "bg": s:colorcolumn_bg, "attr": s:colorcolumn_attr })
call s:h("Directory", {"fg": s:directory})
call s:h("netrwSymLink", {"fg": s:symlink})
call s:h("Error", { "fg": s:error_fg, "bg": s:error_bg, "attr": s:error_attr })
call s:h("ErrorMsg", { "fg": s:errormsg_fg, "bg": s:errormsg_bg, "attr": s:errormsg_attr })
call s:h("Search", { "fg": s:search_fg, "bg": s:search_bg, "attr": s:search_attr })
call s:h("IncSearch", { "fg": s:incsearch_fg, "bg": s:incsearch_bg, "attr": s:incsearch_attr })
" Current match for the last search pattern
call s:h("CurSearch", { "fg": s:incsearch_fg, "bg": s:incsearch_bg, "attr": s:incsearch_attr })
call s:h("MatchParen", { "fg": s:matchparen_fg, "bg": s:matchparen_bg, "attr": s:matchparen_attr })
call s:h("ModeMsg", {"fg": s:modemsg, "attr": s:modemsg_attr})
call s:h("MoreMsg", {"fg": s:moremsg, "attr": s:moremsg_attr})
call s:h("Pmenu", { "fg": s:pmenu_fg, "bg": s:pmenu_bg, "attr": s:pmenu_attr })
call s:h("PmenuSel", { "fg": s:pmenusel_fg, "bg": s:pmenusel_bg, "attr": s:pmenusel_attr })
call s:h("PmenuSbar", { "fg": s:pmenusbar_fg, "bg": s:pmenusbar_bg, "attr": s:pmenusbar_attr })
call s:h("PmenuThumb", { "fg": s:pmenuthumb_fg, "bg": s:pmenuthumb_bg, "attr": s:pmenuthumb_attr })
call s:noh("WildMenu")
call s:h("Question", {"fg": s:question})
call s:h("WarningMsg", { "fg": s:warningmsg_fg, "bg": s:warningmsg_bg, "attr": s:warningmsg_attr })
call s:h("Visual", { "fg": s:visual_fg, "bg": s:visual_bg, "attr": s:visual_attr })
call s:h("VisualNOS", { "fg": s:visualnos_fg, "bg": s:visualnos_bg, "attr": s:visualnos_attr })
call s:h("TabLine", { "fg": s:tabline_fg, "bg": s:tabline_bg, "attr": s:tabline_attr })
call s:h("TabLineSel", {"fg": s:tablinesel_fg, "bg": s:tablinesel_bg, "attr": s:tablinesel_attr })
call s:h("TabLineFill", {"bg": s:tablinefill})

" Quickfix window
"
" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinQuickfix()
call JMinQuickfix()
call s:h("QuickFixLine",        { "fg": s:qfline_fg, "bg": s:qfline_bg, "attr": s:qfline_attr })

" Side‐by‐Side Diff
call s:h("DiffAdd", { "fg": s:diffadd_fg, "bg": s:diffadd_bg, "attr": s:diffadd_attr })
call s:h("DiffChange", {"fg": s:diffchange_fg, "bg": s:diffchange_bg})
call s:h("DiffText", { "fg": s:difftext_fg, "bg": s:difftext_bg, "attr": s:difftext_attr })
call s:h("DiffDelete", { "fg": s:diffdelete_fg, "bg": s:diffdelete_bg, "attr": s:diffdelete_attr })
" Diff Text and Git Diff
call s:h("diffFile", {"fg": s:difffile_fg, "bg": s:difffile_bg, "attr": s:difffile_attr})
call s:h("diffNewFile", {"fg": s:diffnewfile_fg, "bg": s:diffnewfile_bg, "attr": s:diffnewfile_attr})
call s:h("diffIndexLine", {"fg": s:diffindexline_fg, "bg": s:diffindexline_bg, "attr": s:diffindexline_attr})
call s:h("diffLine", {"fg": s:diffline_fg, "bg": s:diffline_bg, "attr": s:diffline_attr})
call s:h("diffSubName", {"fg": s:diffsubname_fg, "bg": s:diffsubname_bg, "attr": s:diffsubname_attr})
call s:h("gitDiff", {"fg": s:gitdiff_fg, "bg": s:gitdiff_bg, "attr": s:gitdiff_attr})
call s:h("diffAdded", {"fg": s:diffadded_fg, "bg": s:diffadded_bg, "attr": s:diffadded_attr })
call s:h("diffRemoved", { "fg": s:diffremoved_fg, "bg": s:diffremoved_bg, "attr": s:diffremoved_attr })
" Git Log
call s:h("gitKeyword", {"fg": s:gitkeyword_fg, "bg": s:gitkeyword_bg, "attr": s:gitkeyword_attr})
call s:h("gitHash", {"fg": s:githash_fg, "bg": s:githash_bg, "attr": s:githash_attr})
call s:h("gitHead", {"fg": s:githead_fg, "bg": s:githead_bg, "attr": s:githead_attr})
" Git Gutter change markers
call s:h("GitGutterAdd", {"fg": s:gitgutteradd_fg})
call s:h("GitGutterChange", {"fg": s:gitgutterchange_fg})
call s:h("GitGutterDelete", {"fg": s:gitgutterdelete_fg})
call s:h("GitGutterChangeDelete", {"fg": s:gitgutterchangedelete_fg})
" New Diff Groups. These seem to be used in diff format text.
hi link Add diffAdded
" I don’t have a group for changed diff text that does not set a background,
" so I’ll use whatever I set for GitGutterChange.
hi link Changed GitGutterChange
hi link Removed diffRemoved

call s:h("SpellBad", { "fg": s:spellbad_fg, "bg": s:spellbad_bg, "guisp": s:spellbad_guisp, "attr": s:spellbad_attr })
call s:h("SpellCap", { "fg": s:spellcap_fg, "bg": s:spellcap_bg, "guisp": s:spellcap_guisp, "attr": s:spellcap_attr })
call s:h("SpellLocal", { "fg": s:spelllocal_fg, "bg": s:spelllocal_bg, "guisp": s:spelllocal_guisp, "attr": s:spelllocal_attr })
call s:h("SpellRare", { "fg": s:spellrare_fg, "bg": s:spellrare_bg, "guisp": s:spellrare_guisp, "attr": s:spellrare_attr })

" Unhighlighted
"
" I tried linking the rest of these to Boolean like this to see if that sped
" up scrolling and cursor movement:
"
"   hi! link Special Boolean
"
" I was still getting the sluggish movement sporadically if I wasn’t using
" TransBGFull or TransBG, and some highlight groups were still getting
" highlighted. I guess they had other links that were not getting overridden.
"
" Leave Boolean alone. It should be linked to Constant.
"call s:noh("Boolean")
" Leave Conditional alone. It should be linked to Statement.
"call s:noh("Conditional")
"call s:noh("Constant")
" Leave Debug alone. It should be linked to Special.
"call s:noh("Debug")
" Leave Define alone. It should be linked to PreProc.
"call s:noh("Define")
call s:noh("Delimiter")
" I don’t think this exists. I am not sure where I found it.
call s:noh("Directive")
" Leave Exception alone. It should be linked to Statement.
"call s:noh("Exception")
" Leave Float alone. It should be linked to Number.
"call s:noh("Float")
" I don’t think this exists. I am not sure where I found it.
call s:noh("Format")
call s:noh("Function")
call s:noh("Identifier")
call s:noh("Ignore")
" Leave Include alone. It should be linked to PreProc.
"call s:noh("Include")
" Leave Keyword alone. It should be linked to Statement.
"call s:noh("Keyword")
" Leave Label alone. It should be linked to Statement.
"call s:noh("Label")
" Leave Macro alone. It should be linked to PreProc.
"call s:noh("Macro")
" Leave Number alone. It should be linked to Constant.
"call s:noh("Number")
call s:noh("Operator")
" Leave PreCondit alone. It should be linked to PreProc.
"call s:noh("PreCondit")
" Leave PreProc alone because it is reset when JMinKeyword is called twice
" when the colorscheme loads.
"call s:noh("PreProc")
" Leave Repeat alone. It should be linked to Statement.
"call s:noh("Repeat")
" Leave SpecialChar alone. it should be linked to Special.
"call s:noh("SpecialChar")
" Leave SpecialComment alone. it should be linked to Special.
"call s:noh("SpecialComment")
call s:noh("Special")
" Leave Statement alone because it is reset when JMinKeyword is called twice
" when the colorscheme loads.
"call s:noh("Statement")
" Leave StorageClass alone. it should be linked to Type.
"call s:noh("StorageClass")
" Leave Structure alone. it should be linked to Type.
"call s:noh("Structure")
" Leave Tag alone. it should be linked to Special.
"call s:noh("Tag")
call s:noh("Title")
" Leave Typedef alone. it should be linked to Type.
"call s:noh("Typedef")
" Leave Type alone because it is reset when JMinKeyword is called twice
" when the colorscheme loads.
"call s:noh("Type")
"call s:noh("Underlined")
call s:h("Underlined", { "attr": s:underlined_attr })
call s:noh("Menu")
call s:noh("Scrollbar")
call s:noh("ToolTip")

" Sneak jumpsearch plugin
call s:h("SneakLabelMask", {"fg": s:sneak_fg, "bg": s:sneaklabelmask})
call s:h("SneakTarget", {"fg": s:sneak_fg, "bg": s:sneaktarget})
call s:h("SneakLabelTarget", {"fg": s:sneak_fg, "bg": s:sneaklabeltarget})
call s:h("SneakScope", {"fg": s:sneak_fg, "bg": s:sneakscope})

" indent-guides
call s:noh("IndentGuidesOdd")
call s:h("IndentGuidesEven", { "fg": s:nontext_fg, "bg": s:indent_guides_bg })

" NeoVim / Treesitter specific groups.
" Vim will get a error if you try to highlight a group with an @ in its name.
if has('nvim')
    call s:noh("@variable")
    "hi link @variable Identifier
    hi link @tag.delimiter.html htmlTag
    hi link @tag.html htmlTagName
    hi link @tag.attribute.html htmlTag
    hi link @operator.html htmlTag
    hi link @markup.raw.block.markdown String
    hi link @markup.raw.markdown_inline String
    hi link @markup.raw String
    hi link @markup.heading.1.markdown htmlH1
    hi link @markup.heading.2.markdown htmlH1
    hi link @markup.heading.3.markdown htmlH1
    hi link @markup.heading.4.markdown htmlH1
    hi link @markup.heading.5.markdown htmlH1
    hi link @markup.heading.6.markdown htmlH1
    hi link @markup.quote.markdown Comment
    hi link @tag.xml XMLTagName
    hi link @tag.delimiter.xml XMLTag
    hi link @tag.attribute.xml xmlAttrib
    hi link @operator.xml xmlEqual
    hi link @punctuation.delimiter.xml xmlAttribPunct
    " New Diff Groups.
    " These are linked to the new regular groups (which I further link above)
    " but I have to link these directly to have an effect.
    hi link @diff.plus.diff diffAdded
    hi link @diff.minus.diff diffRemoved
    hi link @attribute.diff diffIndexLine
    "hi link @module.python @module
    call s:noh("@module.python")
    hi link @type.builtin.python Type
endif

" Diagnostics
call s:h("DiagnosticError", { "fg": s:diagnosticerror_fg, "bg": s:diagnosticerror_bg, "attr": s:diagnosticerror_attr })
call s:h("DiagnosticWarn", { "fg": s:diagnosticwarn_fg, "bg": s:diagnosticwarn_bg, "attr": s:diagnosticwarn_attr })
call s:h("DiagnosticInfo", { "fg": s:diagnosticinfo_fg, "bg": s:diagnosticinfo_bg, "attr": s:diagnosticinfo_attr })
call s:h("DiagnosticHint", { "fg": s:diagnostichint_fg, "bg": s:diagnostichint_bg, "attr": s:diagnostichint_attr })
call s:h("DiagnosticOk", { "fg": s:diagnosticok_fg, "bg": s:diagnosticok_bg, "attr": s:diagnosticok_attr })
call s:hmod("DiagnosticUnderlineError", { "fg": s:diagnosticunderlineerror_fg, "bg": s:diagnosticunderlineerror_bg, "guisp": s:diagnosticunderlineerror_guisp, "attr": s:diagnosticunderlineerror_attr })
call s:hmod("DiagnosticUnderlineWarn", { "fg": s:diagnosticunderlinewarn_fg, "bg": s:diagnosticunderlinewarn_bg, "guisp": s:diagnosticunderlinewarn_guisp, "attr": s:diagnosticunderlinewarn_attr })
call s:hmod("DiagnosticUnderlineInfo", { "fg": s:diagnosticunderlineinfo_fg, "bg": s:diagnosticunderlineinfo_bg, "guisp": s:diagnosticunderlineinfo_guisp, "attr": s:diagnosticunderlineinfo_attr })
call s:hmod("DiagnosticUnderlineHint", { "fg": s:diagnosticunderlinehint_fg, "bg": s:diagnosticunderlinehint_bg, "guisp": s:diagnosticunderlinehint_guisp, "attr": s:diagnosticunderlinehint_attr })
call s:hmod("DiagnosticUnderlineOk", { "fg": s:diagnosticunderlineok_fg, "bg": s:diagnosticunderlineok_bg, "guisp": s:diagnosticunderlineok_guisp, "attr": s:diagnosticunderlineok_attr })
call s:h("NormalFloat", { "fg": s:normalfloat_fg, "bg": s:normalfloat_bg })
call s:h("FloatBorder", { "fg": s:floatborder_fg, "bg": s:floatborder_bg })


"
" These are toggled by options. They default to normal, or unhighlighted.
"

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinComments()
call JMinComments()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinFolds()
call JMinFolds()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinLineNumbers()
call JMinLineNumbers()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinStrings()
call JMinStrings()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinNumbers()
call JMinNumbers()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinKeyword()
call JMinKeyword()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinHTMLTags()
call JMinHTMLTags()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinExtraFmt()
call JMinExtraFmt()
