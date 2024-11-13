# jmin Vim / Neovim Colour schemes #

A set of minimal Vim / Neovim colour schemes.

It comes in dark and light varieties. The default settings only highlight
comments and strings.

There is also an even simpler 2‐colour only version.

It includes the following colour schemes:

* `jmin-black`
* `jmin-dark`
* `jmin-light`
* `jmin-white`
* `jmin-2color` — Uses foreground and background colours only
* `jmin-simple` — Same as above, but only sets basic syntax colours

All of these work in full colour, 256 colour, 16 colour and 2 colour terminals.


## Installation ##

vim-plug:

    Plug 'jmcclare/jmin'

lazy.nvim

    {'jmcclare/jmin'},

Vim 8+ Packages

    git clone https://github.com/jmcclare/jmin.git ~/.vim/pack/vendor/start/jmin

paq.nvim

    {'jmcclare/jmin'},

pckr.nvim

    {'jmcclare/jmin'},

packer.nvim

    use({'jmcclare/jmin'})

mini.deps

    MiniDeps.add({source = 'jmcclare/jmin'})

Vundle:

    Plugin 'jmcclare/jmin'

NeoBundle:

    NeoBundle 'jmcclare/jmin'

Pathogen:

    git clone https://github.com/jmcclare/jmin.git ~/.vim/bundle/jmin


## Configuration ##

Before setting the colorscheme you can set the following variables to configure
it.

For example:

    let g:jmin_contrast = 'high'

Or in Lua:

    vim.g.jmin_contrast = "high"

Some of these settings do not apply to the 2‐colour schemes. Toggle settings are
`1` for on, `0` for off.

`g:jmin_contrast`: Changes the normal text colour to have more or less contrast
with the background.

Values: `'normal'` (default), `'high'`, or `'low'`.

`g:jmin_hlcomments`: Highlight comments.

Values: `1` (default), `0`.

`g:jmin_hlstrs`: Highlight strings.

Values: `1` (default), `0`.

`g:jmin_hlnum`: Highlight numerical values in code.

Values: `1`, `0` (default).

`g:jmin_hlkeyword`: Highlight Some Language Keywords.

Values: `1`, `0` (default).

`g:jmin_extrafmt`: Extra Formatting; headings, bold and em in HTML and Markdown.

Values: `1` (default), `0`.

`g:jmin_hlfolds`: Extra Formatting; headings, bold and em in HTML and Markdown.

Values: `1` (default), `0`.

`g:jmin_hllinenumbers`: Highlight Line Numbers.

Values: `1` (default), `0`.

`g:jmin_colorize_bold`: Colourize bold text. Useful if your font cannot be displayed in bold.

Values: `1` (default), `0`.

`g:jmin_16`: Use 16 colour mode.

This makes it behave like a classic 16 colour terminal and disables non
supported features like extended colours and underlines. Note that you can
still enable some of that special formatting with options like extra
formatting. Technically, bold works in a 16 colour terminal (it uses a brighter
text colour), but only the extra styles will enable it.

Values: `1`, `0` (default).

`g:jmin_hlhtml`: Highlight HTML tags. It fades the tags to help you read the text inside them.

Values: `1` (default), `0`.

`g:jmin_hlquickfix`: Highlight Quickfix Window.

Values: `1` (default), `0`.

`g:jmin_2color`: 2 colours only. Highlighting is done entirely with swapping
foreground and background and a bit of underline, bold, and italics. Items
marked for highlighting with other options will still be highlighted. This can
be combined with 16 colour mode.


## Commands / Mappings ##

The color schemes set some mappings that toggle settings and reload the scheme.

`<leader>jmc`: Toggle comment highlighting. Can be changed by setting `g:jmin_toggle_comments_shortcut`.

`<leader>jms`: Toggle string highlighting. Can be changed by setting `g:jmin_toggle_strings_shortcut`

`<leader>jmn`: Toggle number highlighting. Can be changed by setting `g:jmin_toggle_numbers_shortcut`.

`<leader>jmk`: Toggle language keyword highlighting. Can be changed by setting `g:jmin_toggle_keywords_shortcut`.

`<leader>jme`: Toggle extra formatting. Can be changed by setting `g:jmin_toggle_extrafmt_shortcut`.

`<leader>jmf`: Toggle fold highlighting. Can be changed by setting `g:jmin_toggle_folds_shortcut`.

`<leader>jml`: Toggle line number highlighting. Can be changed by setting `g:jmin_toggle_line_numbers_shortcut`.

`<leader>jmh`: Toggle HTML tags highlighting. Can be changed by setting `g:jmin_toggle_html_shortcut`.

`<leader>jmq`: Toggle quickfix list highlighting. Can be changed by setting `g:jmin_toggle_quickfix_shortcut`.

`<leader>jmt`: Toggle 16 colour mode. The `t` stands for “terminal”. Can be changed by setting `g:jmin_toggle_16color_terminal_shortcut`.

`<leader>jm2`: Toggle 2 colour mode. Can be changed by setting `g:jmin_toggle_2color_shortcut`.
