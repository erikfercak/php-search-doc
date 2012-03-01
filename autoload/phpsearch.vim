function! phpsearch#doc(type, keyword)
  let keyword = substitute(a:keyword, '_', '-', 'g')

  if a:type == 'function'
    let url = 'http://php.net/manual/en/function.' . keyword . '.php'
  else
    let url = 'http://php.net/results.php?q=' . keyword . '&p=' . a:type . '&l=en'
  endif

  silent exec '!' . g:php_search_doc_command . ' "' . url . '" &'

  if !has("gui_running")
    exec ':redraw!'
  endif
endfunction
