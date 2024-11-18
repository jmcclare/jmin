# jmin Vim / Neovim Colour schemes #

J-Min: A set of minimal Vim / Neovim colour schemes.

J-Min colorschemes come in dark and light varieties. The default settings only
highlight comments and strings (and some text formatting for HTML / Markdown).

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

This colorscheme uses undercurls in all but 16 and 2 colour terminals. To
ensure undercurl support in [Tmux](https://github.com/tmux/tmux) add the
following to your Tmux config:

    # Undercurl and underscore support
    set -g default-terminal "${TERM}"
    set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
    set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0


## Configuration / Use ##

For configuration and use instructions enter `:h jmin`
