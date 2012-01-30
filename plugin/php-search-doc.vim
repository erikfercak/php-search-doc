" php-search-doc.vim - Browse PHP docs
" Author:       Erik Fercak <erik.fercak@gmail.com>
" Version:      0.1

if exists("g:loaded_php_search_doc")
  finish
endif
let g:loaded_php_search_doc = 1

if !exists('g:php_search_doc_command')
   let g:php_search_doc_command='open'
endif

if !exists('g:php_search_doc_function_mapping')
    let g:php_search_doc_function_mapping='<Leader>pf'
endif

if !exists('g:php_search_doc_manual_mapping')
    let g:php_search_doc_manual_mapping='<Leader>pm'
endif

execute "noremap <silent> ".g:php_search_doc_function_mapping." :call phpsearch#doc('function',expand('<cword>'))<CR>"
execute "noremap <silent> ".g:php_search_doc_manual_mapping." :call phpsearch#doc('manual',expand('<cword>'))<CR>"
