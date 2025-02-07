# jmin Vim / Neovim Color schemes #

J-Min: A set of minimal Vim / Neovim color schemes.

J-Min color schemes come in dark and light varieties. The default settings only
highlight comments and strings (and some text formatting for HTML / Markdown).

There is also an even simpler 2‐color only version.

It includes the following color schemes:

* `jmin-black`
* `jmin-dark`
* `jmin-light`
* `jmin-white`
* `jmin-2color` — Uses foreground and background colors only
* `jmin-simple` — Same as jmin-2color, but only sets basic syntax colors

All of these work in full color, 256 color, 16 color and 2 color terminals.


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

This color scheme uses undercurls in all but 16 and 2 color terminals. To
ensure undercurl support in [Tmux](https://github.com/tmux/tmux) add the
following to your Tmux config:

```tmux
# Undercurl and underscore support
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colors - needs tmux-3.0
```


## Configuration / Use ##

For configuration and use instructions enter `:h jmin`
