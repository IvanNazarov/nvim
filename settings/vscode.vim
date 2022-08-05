  filetype on
  filetype plugin on
  filetype indent on

  set clipboard=unnamedplus

  set incsearch       " search as characters are entered
  set hlsearch        " highlight matche
  set ignorecase      " ignore case when searching
  set smartcase       " ignore case if search pattern is lower case

  let mapleader=','

  nnoremap <leader><space> :nohlsearch<CR>

  nnoremap <silent> za <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
  nnoremap <silent> zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
  nnoremap <silent> zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
  nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
  nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
  nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
  nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>

  nmap j gj
  nmap k gk
