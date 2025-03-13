" Name: JMin 2‐Color Colorscheme
" Author: jmcclare (on Github)
" License: OSI approved MIT license
" Based on:
" * https://github.com/robertmeta/nofrils
" * https://github.com/pbrisbin/vim-colors-off
" * https://github.com/noahfrederick/vim-hemisu

" Source my reset color scheme to properly reset all highlight groups to their
" defaults.
runtime! colors/jmin/reset.vim

" Define global variables.
runtime! colors/jmin/globals.vim

let g:colors_name = "jmin-2color"
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

" We are always in 2 colour mode, so always set this.
set fillchars=stlnc:-

" The key for this colour scheme is setting every colour to NONE so that we
" end up using the terminal’s current foreground and background colours.
let s:none            = { "gui": "NONE", "cterm": "NONE" }


"
" Set named colors for groups
"

let s:norm_fg = s:none
let s:norm_bg = s:none

if exists("g:jmin_fg")
    let s:norm_fg = g:jmin_fg
endif
if exists("g:jmin_bg")
    let s:norm_bg = g:jmin_bg
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

let s:comment_attr             = s:italic
let s:statement_fg             = s:norm_fg
let s:statement_attr           = s:bold
let s:preproc_fg               = s:statement_fg
let s:preproc_attr             = s:statement_attr
let s:type_fg                  = s:statement_fg
let s:type_attr                = s:statement_attr
let s:html_h1_attr             = s:bold
let s:html_link_attr           = s:underline
if g:jmin_no_underline
    let s:html_link_attr       = s:bold
endif
let s:html_bold_attr           = s:bold
let s:html_italic_attr         = s:italic

let s:help_hypertext_jump_attr = s:underline


" Dividers

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
let s:nontext_fg         = s:norm_fg
let s:nontext_bg         = s:norm_bg
let s:signcolumn         = s:norm_fg
let s:modemsg            = s:norm_fg
"let s:modemsg_attr       = s:bold
" Some syntax groups could be linked to this (try some .cmake files for
" examples), so I keep it completely unhighlighted.
let s:modemsg_attr       = s:none
let s:moremsg            = s:norm_fg
let s:moremsg_attr       = s:bold
let s:question           = s:norm_fg
let s:todo               = s:norm_fg
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
    let s:visualnos_attr = { "gui": "reverse", "cterm": "reverse" }
endif
let s:specialkey         = s:norm_fg
let s:tabline_fg         = s:norm_fg
let s:tabline_bg         = s:norm_bg
let s:tabline_attr       = { "gui": "reverse", "cterm": "reverse" }
let s:tablinesel_fg      = s:none
let s:tablinesel_bg      = s:none
let s:tablinesel_attr    = s:none
"let s:tablinesel_attr    = s:bold
let s:tablinefill        = s:norm_bg
let s:tablinefill_attr   = { "gui": "reverse", "cterm": "reverse" }
let s:underlined_attr    = s:underline
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
let s:diagnosticunderlineerror_fg       = s:errormsg_fg
let s:diagnosticunderlineerror_bg       = s:errormsg_bg
let s:diagnosticunderlineerror_guisp    = s:errormsg_fg
let s:diagnosticunderlineerror_attr     = s:underline
if g:jmin_no_underline
    let s:diagnosticunderlineerror_attr = { "gui": "reverse", "cterm": "reverse" }
endif
let s:diagnosticunderlinewarn_fg        = s:warningmsg_fg
let s:diagnosticunderlinewarn_bg        = s:warningmsg_bg
let s:diagnosticunderlinewarn_guisp     = s:warningmsg_fg
let s:diagnosticunderlinewarn_attr      = s:underline
if g:jmin_no_underline
    let s:diagnosticunderlinewarn_attr  = { "gui": "reverse", "cterm": "reverse" }
endif
let s:diagnosticunderlineinfo_fg        = s:infomsg_fg
let s:diagnosticunderlineinfo_bg        = s:infomsg_bg
let s:diagnosticunderlineinfo_guisp     = s:infomsg_fg
let s:diagnosticunderlineinfo_attr      = s:underline
let s:diagnosticunderlinehint_fg        = s:hintmsg_fg
let s:diagnosticunderlinehint_bg        = s:hintmsg_bg
let s:diagnosticunderlinehint_guisp     = s:hintmsg_fg
let s:diagnosticunderlinehint_attr      = s:underline
let s:diagnosticunderlineok_fg          = s:okmsg_fg
let s:diagnosticunderlineok_bg          = s:okmsg_bg
let s:diagnosticunderlineok_guisp       = s:okmsg_fg
let s:diagnosticunderlineok_attr        = s:underline
" We assume a terminal with termguicolors (full, 16 million colour support) is
" as good as GVim and can do separate underline colours and undercurls. In
" full colour terminals that cannot do these things Vim and NeoVim should
" safely degrade to underlines. There will be no special colour, but there is
" no direct way to test for support of these features.
if (has('termguicolors') && &termguicolors || has('gui_running')) && ! g:jmin_no_underline
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
let s:normalfloat_fg     = s:none
let s:normalfloat_bg     = s:none
let s:floatborder_fg     = s:none
let s:floatborder_bg     = s:none

let s:pmenu_fg           = s:norm_fg
let s:pmenu_bg           = s:norm_bg
let s:pmenu_attr         = { "cterm": "reverse", "gui": "reverse" }
let s:pmenusel_fg        = s:norm_fg
let s:pmenusel_bg        = s:norm_bg
let s:pmenusel_attr      = s:none
let s:pmenusbar_fg       = s:norm_fg
let s:pmenusbar_bg       = s:none
let s:pmenusbar_attr     = { "cterm": "reverse", "gui": "reverse" }
let s:pmenuthumb_fg      = s:none
let s:pmenuthumb_bg      = s:norm_bg
let s:pmenuthumb_attr    = s:none

let s:qffilename         = s:norm_fg
let s:qfseparator        = s:norm_fg
let s:qflinenr           = s:norm_fg
"let s:qflinenr_attr      = s:italic
let s:qflinenr_attr      = s:none
let s:qfline_fg          = s:norm_fg
let s:qfline_bg          = s:norm_bg
let s:qfline_attr        = { "gui": "reverse", "cterm": "reverse" }

let s:diffadd_fg         = s:norm_fg
let s:diffadd_bg         = s:norm_bg
let s:diffadd_attr       = { "gui": "reverse", "cterm": "reverse" }
let s:diffchange_fg      = s:none
let s:diffchange_bg      = s:none
let s:diffdelete_fg      = s:norm_fg
let s:diffdelete_bg      = s:norm_bg
let s:diffdelete_attr    = { "gui": "reverse", "cterm": "reverse" }
let s:difftext_fg        = s:norm_fg
let s:difftext_bg        = s:norm_bg
let s:difftext_attr      = { "gui": "reverse", "cterm": "reverse" }

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

let s:gitgutteradd_fg          = s:none
let s:gitgutterchange_fg       = s:none
let s:gitgutterdelete_fg       = s:none
let s:gitgutterchangedelete_fg = s:none

let s:spellbad_fg              = s:norm_fg
let s:spellbad_bg              = s:norm_bg
let s:spellbad_attr            = s:underline
if g:jmin_no_underline
    let s:spellbad_attr        = { "gui": "reverse", "cterm": "reverse" }
endif
let s:spellcap_fg              = s:norm_fg
let s:spellcap_bg              = s:norm_bg
let s:spellcap_attr            = s:underline
if g:jmin_no_underline
    let s:spellcap_attr        = { "gui": "reverse", "cterm": "reverse" }
endif
let s:spelllocal_fg            = s:norm_fg
let s:spelllocal_bg            = s:norm_bg
let s:spelllocal_attr          = s:underline
if g:jmin_no_underline
    let s:spelllocal_attr      = { "gui": "reverse", "cterm": "reverse" }
endif
let s:spellrare_fg             = s:norm_fg
let s:spellrare_bg             = s:norm_bg
let s:spellrare_attr           = s:underline
if g:jmin_no_underline
    let s:spellrare_attr       = { "gui": "reverse", "cterm": "reverse" }
endif

let s:spellbad_guisp           = s:norm_fg
let s:spellcap_guisp           = s:norm_fg
let s:spelllocal_guisp         = s:norm_fg
let s:spellrare_guisp          = s:norm_fg

" We assume a terminal with termguicolors (full, 16 million colour support) is
" as good as GVim and can do separate underline colours and undercurls. In
" full colour terminals that cannot do these things Vim and NeoVim should
" safely degrade to underlines. There will be no special colour, but there is
" no direct way to test for support of these features.
if (has('termguicolors') && &termguicolors || has('gui_running')) && ! g:jmin_no_underline
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
    if ! has('nvim') && ! has('gui_running')
        " Set cterm styles to underline.
        let s:spellbad_attr    = { "gui": "undercurl", "cterm": "underline" }
        let s:spellcap_attr    = { "gui": "undercurl", "cterm": "underline" }
        let s:spelllocal_attr  = { "gui": "undercurl", "cterm": "underline" }
        let s:spellrare_attr   = { "gui": "undercurl", "cterm": "underline" }
    endif
endif

let s:sneak_fg                 = s:norm_fg
" These are their individual background colours
let s:sneaklabelmask           = s:norm_bg
let s:sneaktarget              = s:norm_bg
let s:sneaklabeltarget         = s:norm_bg
let s:sneakscope               = s:norm_bg

" indent-guides
let s:indent_guides_bg         = s:norm_bg
let s:indent_guides_attr       = { "gui": "reverse", "cterm": "reverse" }


if &t_Co == 8 || g:term_colors == '8' || &t_Co == 16 || g:term_colors == '16' || g:jmin_16 == 1 || s:term == 'linux'
    let s:comment_attr       = s:none
    let s:html_link_attr     = s:bold
    let s:html_italic_attr   = s:none
    let s:statusline_attr    = { "gui": "reverse", "cterm": "reverse" }
    let s:statusline_nc_attr = s:none

    let s:search_attr        = { "gui": "reverse", "cterm": "reverse" }
    let s:incsearch_attr     = { "gui": "bold,reverse", "cterm": "bold,reverse" }

    let s:cursorline_attr    = { "gui": "reverse", "cterm": "reverse" }
    let s:cursorim_attr      = { "gui": "reverse", "cterm": "reverse" }

    let s:error_attr         = { "gui": "reverse", "cterm": "reverse" }

    let s:matchparen_attr    = s:bold

    let s:visual_attr        = { "gui": "reverse", "cterm": "reverse" }
    let s:visualnos_attr     = { "gui": "reverse", "cterm": "reverse" }

    let s:tabline_attr       = { "gui": "reverse", "cterm": "reverse" }

    let s:underlined_attr    = s:bold

    let s:qfline_attr        = { "gui": "reverse", "cterm": "reverse" }
    let s:qflinenr_attr      = s:bold

    let s:spellbad_attr      = { "gui": "reverse", "cterm": "reverse" }
    let s:spellcap_attr      = { "gui": "reverse", "cterm": "reverse" }
    let s:spelllocal_attr    = { "gui": "reverse", "cterm": "reverse" }
    let s:spellrare_attr     = { "gui": "reverse", "cterm": "reverse" }

    " Only NeoVim Diagnostics has these message types
    let s:infomsg_fg       = s:norm_fg
    let s:infomsg_bg       = s:norm_bg
    let s:infomsg_attr     = s:none
    let s:hintmsg_fg       = s:norm_fg
    let s:hintmsg_bg       = s:norm_bg
    let s:hintmsg_attr     = s:none
    let s:okmsg_fg         = s:norm_fg
    let s:okmsg_bg         = s:norm_bg
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
    let s:diagnosticunderlineerror_attr = { "gui": "reverse", "cterm": "reverse" }
    let s:diagnosticunderlinewarn_fg    = s:warningmsg_fg
    let s:diagnosticunderlinewarn_bg    = s:warningmsg_bg
    let s:diagnosticunderlinewarn_attr  = { "gui": "reverse", "cterm": "reverse" }
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
endif


"
" Helper Functions
"

" Toggle comment style
function! JMinComments()
    if g:jmin_hlcomments
        let g:jmin_hlcomments = 0
        call s:noh("Comment")
        "call s:noh("Todo")
        "call s:noh("vimCommentTitle")
    else
        let g:jmin_hlcomments = 1
        call s:h("Comment", {"attr": s:comment_attr})
        "call s:h("Todo", {"fg": s:todo_fg, "attr": s:todo_attr})
        ""hi! link Todo Comment
        "call s:h("vimCommentTitle", {"fg": s:vim_comment_title_fg, "attr": s:vim_comment_title_attr})
        ""hi! link vimCommentTitle Comment
    end
endfunction
command! JMinComments call JMinComments()
execute "map" g:jmin_toggle_comments_shortcut ":JMinComments<enter>"

" Toggle keyword (Statement group) highlighitng
function! JMinKeyword()
    if g:jmin_hlkeyword
        let g:jmin_hlkeyword = 0
        call s:noh("Statement")
        call s:noh("PreProc")
        call s:noh("Type")
    else
        let g:jmin_hlkeyword = 1
        call s:h("Statement", {"fg": s:statement_fg, "attr": s:statement_attr})
        call s:h("PreProc",   {"fg": s:preproc_fg, "attr": s:preproc_attr})
        call s:h("Type",      {"fg": s:type_fg, "attr": s:type_attr})
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
        call s:h("htmlH1", { "attr": s:html_h1_attr })
        call s:h("htmlLink", { "attr": s:html_link_attr })
        call s:h("htmlBold", { "attr": s:html_bold_attr })
        call s:h("htmlItalic", { "attr": s:html_italic_attr })
        call s:h("mkdHeading", { "attr": s:html_h1_attr })
        call s:h("Title", { "attr": s:html_h1_attr })
    end
endfunction
command! JMinExtraFmt call JMinExtraFmt()
execute "map" g:jmin_toggle_extrafmt_shortcut ":JMinExtraFmt<enter>"

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

" Takes only a highlight group name and sets all attributes to NONE, ie. sets
" them to match the normal highlight group.
function! s:noh(group)
    call s:h(a:group, {})
    "call s:h(a:group,        {"bg": s:norm_bg, "fg": s:norm_fg, "attr": { "gui": "NONE", "cterm": "NONE" },})
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

call s:noh("Comment")
call s:noh("Folded")
call s:noh("FoldColumn")
call s:noh("LineNr")
call s:noh("Character")
call s:noh("String")
call s:noh("htmlTag")
call s:noh("htmlTagName")
call s:noh("htmlSpecialTagName")
call s:noh("htmlArg")
call s:noh("htmlString")
call s:noh("htmlEndTag")

call s:h("htmlH1", { "attr": s:none })
call s:h("htmlLink", { "attr": s:none })
call s:h("htmlBold", { "attr": s:none })
call s:h("htmlItalic", { "attr": s:none })
if g:jmin_extrafmt
    call s:h("htmlH1", { "attr": s:html_h1_attr })
    call s:h("htmlLink", { "attr": s:html_link_attr })
    call s:h("htmlBold", { "attr": s:html_bold_attr })
    call s:h("htmlItalic", { "attr": s:html_italic_attr })
end

" mkdBlockquote is the NeoVim / Treesitter Markdown blockquote group.
"
" Vim only puts the angle brace “>” quote markers in its markdownBlockquote
" group so there is no point in making that italic.
"
" As of 2025-01-15 I am not sure if NeoVim’s @markup.quote.markdown is still
" used.
hi link mkdBlockquote htmlItalic

call s:h("helpHyperTextJump", { "attr": s:help_hypertext_jump_attr })

" Faded
call s:h("NonText", {"fg": s:nontext_fg, "bg": s:nontext_bg})
call s:h("EndOfBuffer", {"fg": s:nontext_fg, "bg": s:nontext_bg})
call s:h("SignColumn", {"fg": s:signcolumn})
call s:h("SpecialKey", {"fg": s:specialkey})
call s:h("StatusLine", { "fg": s:statusline_fg, "bg": s:statusline_bg, "attr": s:statusline_attr })
call s:h("StatusLineNC", { "fg": s:statusline_nc_fg, "bg": s:statusline_nc_bg, "attr": s:statusline_nc_attr })
call s:h("VertSplit", {"fg": s:vertsplit})
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
call s:h("Todo", {"fg": s:todo})
call s:h("WarningMsg", { "fg": s:warningmsg_fg, "bg": s:warningmsg_bg, "attr": s:warningmsg_attr })
call s:h("Visual", { "fg": s:visual_fg, "bg": s:visual_bg, "attr": s:visual_attr })
call s:h("VisualNOS", { "fg": s:visualnos_fg, "bg": s:visualnos_bg, "attr": s:visualnos_attr })
call s:h("SpecialKey", {"fg": s:specialkey})
call s:h("TabLine", { "fg": s:tabline_fg, "bg": s:tabline_bg, "attr": s:tabline_attr })
call s:h("TabLineSel", {"fg": s:tablinesel_fg, "bg": s:tablinesel_bg, "attr": s:tablinesel_attr })
call s:h("TabLineFill", { "bg": s:tablinefill, "attr": s:tablinefill_attr })

" Quickfix window
call s:h("qfFileName",        {"fg": s:qffilename})
call s:h("qfSeparator", { "fg": s:qfseparator, })
call s:h("qfLineNr",        { "fg": s:qflinenr, "attr": s:qflinenr_attr })
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

" Leave Boolean alone. It should be linked to Constant.
"call s:noh("Boolean")

" This seems to be the only way to reliably set the highlighting for the
" Conceal group (the character shown in place of concealed text). The
" ColorScheme autocmd seems to have no effect unless you set this autocmd from
" within a colorscheme file.
"autocmd WinEnter,BufEnter,BufRead,FileType,ColorScheme * hi! clear Conceal
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
"hi! clear Conceal
call s:noh("Conceal")

"call s:noh("Conditional")
call s:noh("Constant")
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
call s:h("IndentGuidesEven", { "fg": s:nontext_fg, "bg": s:indent_guides_bg, "attr": s:indent_guides_attr })

" NeoVim specific groups.
" Vim will get a error if you try to highlight a group with an @ in its name.
if has('nvim')
    call s:noh("@variable")
    "hi link @variable Identifier
    hi link @tag.delimiter.html htmlTag
    hi link @tag.html htmlTagName
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
endif

" Diagnostics
call s:h("DiagnosticError", { "fg": s:diagnosticerror_fg, "bg": s:diagnosticerror_bg, "attr": s:diagnosticerror_attr })
call s:h("DiagnosticWarn", { "fg": s:diagnosticwarn_fg, "bg": s:diagnosticwarn_bg, "attr": s:diagnosticwarn_attr })
call s:h("DiagnosticInfo", { "fg": s:diagnosticinfo_fg, "bg": s:diagnosticinfo_bg, "attr": s:diagnosticinfo_attr })
call s:h("DiagnosticHint", { "fg": s:diagnostichint_fg, "bg": s:diagnostichint_bg, "attr": s:diagnostichint_attr })
call s:h("DiagnosticOk", { "fg": s:diagnosticok_fg, "bg": s:diagnosticok_bg, "attr": s:diagnosticok_attr })
call s:h("DiagnosticUnderlineError", { "fg": s:diagnosticunderlineerror_fg, "bg": s:diagnosticunderlineerror_bg, "guisp": s:diagnosticunderlineerror_guisp, "attr": s:diagnosticunderlineerror_attr })
call s:h("DiagnosticUnderlineWarn", { "fg": s:diagnosticunderlinewarn_fg, "bg": s:diagnosticunderlinewarn_bg, "guisp": s:diagnosticunderlinewarn_guisp, "attr": s:diagnosticunderlinewarn_attr })
call s:h("DiagnosticUnderlineInfo", { "fg": s:diagnosticunderlineinfo_fg, "bg": s:diagnosticunderlineinfo_bg, "guisp": s:diagnosticunderlineinfo_guisp, "attr": s:diagnosticunderlineinfo_attr })
call s:h("DiagnosticUnderlineHint", { "fg": s:diagnosticunderlinehint_fg, "bg": s:diagnosticunderlinehint_bg, "guisp": s:diagnosticunderlinehint_guisp, "attr": s:diagnosticunderlinehint_attr })
call s:h("DiagnosticUnderlineOk", { "fg": s:diagnosticunderlineok_fg, "bg": s:diagnosticunderlineok_bg, "guisp": s:diagnosticunderlineok_guisp, "attr": s:diagnosticunderlineok_attr })
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
call JMinKeyword()
call JMinKeyword()

" Toggle option twice to activate it.
"
" This silly trick lets us use the toggle function to set these highlights
" instead of repeating the code here.
call JMinExtraFmt()
call JMinExtraFmt()
