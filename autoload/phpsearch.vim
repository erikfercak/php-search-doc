function! phpsearch#doc(type, keyword)
  if a:type == 'function'
    let url = 'http://php.net/manual/en/function.'.a:keyword.'.php'
  else
    let url = 'http://php.net/results.php?q='.a:keyword.'&p='.a:type.'&l=en'
  endif
  exec ':silent !'.g:php_search_doc_command.' '.url.' &'

  if !has("gui_running")
    exec ':redraw!'
  endif
endfunction
