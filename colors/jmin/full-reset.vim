" Source my reset color scheme to properly reset all default highlight groups
" to their defaults.
runtime! colors/jmin/reset.vim

" Re-apply all highlighting found in included syntax files.
"
" NOTE: This takes a few seconds.
runtime! colors/jmin/default-syntax-hl.vim
