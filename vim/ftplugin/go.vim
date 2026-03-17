" Go uses tabs, not spaces
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

" Better folding for Go
setlocal foldmethod=syntax
setlocal foldlevel=99

" vim-go keybindings (all prefixed with <leader>g for Go)
nmap <buffer> <leader>gt <Plug>(go-test)
nmap <buffer> <leader>gtf <Plug>(go-test-func)
nmap <buffer> <leader>gc <Plug>(go-coverage-toggle)
nmap <buffer> <leader>gb <Plug>(go-build)
nmap <buffer> <leader>gr <Plug>(go-run)
nmap <buffer> <leader>gi <Plug>(go-info)
nmap <buffer> <leader>gd <Plug>(go-def)
nmap <buffer> <leader>gj :GoAddTags json<CR>
nmap <buffer> <leader>gJ :GoRemoveTags<CR>

" Quick struct field alignment
nmap <buffer> <leader>ga :GoFillStruct<CR>

" Show function signature
autocmd CursorHold <buffer> if exists('*CocActionAsync') | call CocActionAsync('showSignatureHelp') | endif
