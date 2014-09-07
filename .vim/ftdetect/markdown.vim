autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown setlocal spell
autocmd FileType markdown set complete+=kspell
