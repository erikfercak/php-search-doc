search-php-doc lets you search [http://php.net/](http://php.net/).

If you want something similar for jQuery API documentation see
[vim-jquery-doc](http://github.com/lucapette/vim-jquery-doc).

Or even ruby:
[vim-ruby-doc](https://github.com/lucapette/vim-ruby-doc).

Installation
------------

Either use [pathogen.vim](https://github.com/tpope/pathogen.vim):

    cd ~/.vim/bundle
    git clone git://github.com/erikfercak/php-search-doc.git

or you can copy it into your `~/.vim` directory manually.

How to use it
-------------

When your cursor is on something you would look up, type:

- `<Leader>pf` for php function search
- `<Leader>pm` for whole manual search

and the plugin will open a new tab in your browser (or a
new instance of the browser) to the related docs. See the following section
for changing mappings.

Configure it
------------

By default, the plugin uses the
open command (OSX) but you can change it rather easily. If you are on Linux machine you
can change it to [xdg-open](http://portland.freedesktop.org/xdg-utils-1.0/xdg-open.html)
like this:

    let g:php_search_doc_command='xdg-open'

Furthermore you can choose your own mapping in the following way:

    let g:php_search_doc_manual_mapping='KK'

There are g:php_search_doc_function_mapping and g:php_search_doc_manual_mapping
variables available.

Contributors
------------
[Michael Contento](https://github.com/michaelcontento)

License
-------

Copyright (c) Luca Pette. Distributed under the same terms as Vim itself. See `:help license`.
Copyright (c) Erik Fercak. Heavily inspired and copied from vim-ruby-doc plugin:
https://github.com/lucapette/vim-ruby-doc
Distributed under the same terms as Vim itself. See `:help license`.
