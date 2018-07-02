vim-dict
========

vim interface for [dict](https://sourceforge.net/projects/dict/), a client for
the DICT protocol (RFC 2229).

Usage
-----

```viml
" check for the definition of the given word. Optionally a database can be
" specified, when no database is specified it will use the default database,
" word net.
:Dictionary {word} [database]

" check for words with similar meaning. uses the `moby-thesaurus` database.
:Thesaurus {word}
```

Suggested Mappings
------------------

vim-dict doesn't bind anything by default. It does provide mappings that check
the word under cursor that you can bind as needed. These are the binds I'm
currently using:

```viml
nnoremap <Leader>dd     <Plug>DictdDictionary
nnoremap <Leader>dt     <Plug>DictdThesaurus
```

Installing Dict
---------------

### Arch

```bash
pacman -S dictd
```

### Debian/Ubuntu

```bash
apt-get install dict 
```

### macOS

```bash
brew install dict
```

Tests
-----

To run the tests pull the [themis test
suite](https://github.com/thinca/vim-themis) (you don't have to install it but
you can if you want).

```
git clone git@github.com:thinca/vim-themis.git
./vim-themis/bin/themis --reporter dot test
```

Alternatively you can use the Makefile in the root dir, which will clone the
dependencies and run the tests and linter.

```
make init
make test
make lint
```
