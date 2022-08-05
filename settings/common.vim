  filetype on
  filetype plugin on
  filetype indent on

  set completeopt=longest,menuone

  set encoding=UTF-8
  set fileencoding=UTF-8
  set guifont=FuraCode\ Nerd\ Font:h14
  set path+=**
  set wildmenu
  set wildignore+=.git
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  if (has('termguicolors'))
    set termguicolors
  endif

  set t_Co=256
  syntax enable                " enable syntax processing
  colorscheme dracula
  "colorscheme gruvbox 
  "colorscheme xcodedarkhc

  set showtabline=2

  "let g:airline_theme='xcodedarkhc'
  "let g:airline_theme='gruvbox'
  let g:airline_theme='deus'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 2


  set tabstop=2       " number of visual spaces per TAB
  set softtabstop=2  " number of spaces in tab when editing
  set shiftwidth=2   " number of spaces to use for autoindent
  set expandtab       " tabs are space
  set autoindent
  set copyindent      " copy indent from the previous line

  set mouse=a
  set clipboard=unnamedplus
  "set clipboard+=unnamedplus

  set hidden
  set number relativenumber                   " show line number
  set showcmd                  " show command in bottom bar
  set wildmenu                 " visual autocomplete for command menu
  set showmatch                " highlight matching brace
  set laststatus=2             " window will always have a status line
  set nowritebackup
  set nobackup
  set noswapfile
  set guicursor=n-v-c:block

  set cmdheight=2
  set updatetime=300
  set timeoutlen=300
  set shortmess+=c
  set formatoptions-=cro

  set cursorline
  "hi cursorline cterm=none term=none
  "autocmd WinEnter * setlocal cursorline
  "autocmd WinLeave * setlocal nocursorline
  "highlight CursorLine guibg=#303000 ctermbg=234
  let &colorcolumn="80"

  set incsearch       " search as characters are entered
  set hlsearch        " highlight matche
  set ignorecase      " ignore case when searching
  set smartcase       " ignore case if search pattern is lower case

  set foldenable
  set foldlevelstart=10  " default folding
  set foldnestmax=10     " maximum nested fold
  set foldmethod=manual  " fold based on

  set splitright
  set splitbelow

  map <M-l> <c-w>>
  map <M-h> <c-w><
  map <M-j> <c-w>+
  map <M-k> <c-w>-

  let mapleader=','
  "let mapleader=" "
  "nnoremap <space> <Nop>
  
  " edit/reload vimrc
  nmap <leader>ev :e $MYVIMRC<CR>
  nmap <leader>sv :so $MYVIMRC<CR>

  " better ESC
  inoremap jj <esc>
  inoremap jk <esc>

  " fast save and close
  nmap <leader>w :w<CR>
  nmap <leader>x :x<CR>
  "nmap <leader>q :q<CR>

  " insert blank line before current line
  "without leaving insert mode
  "imap <leader>o <c-o><s-o>

  " j/k will move virtual lines (lines that wrap)
  noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
  noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k') 


  " turn off search highlights
  nnoremap <leader><space> :nohlsearch<CR>

  " Mappings for moving lines and preserving indentation
  " http://vim.wikia.com/wiki/Moving_lines_up_or_down
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv

  nnoremap <TAB> :bnext<CR>
  nnoremap <S-TAB> :bprevious<CR>

  "map <leader>f :Format<CR><ESC>
  "map <leader>= m'gg=G'<CR><ESC>
  
  "command Wd write|bdelete
  cnorea wd w\|:bd

  "augroup FastEscape
    "autocmd!
    "au InsertEnter * set timeoutlen=0
    "au InsertLeave * set timeoutlen=300
  "augroup END
  
  "session support
  fu! CreateSess()
    call mkdir(expand('%:p:h') . '/.vim', 'p')
    execute 'mksession! %:p:h/.vim/session.vim'
  endfunction

  fu! SaveSess()
    if !empty(expand(glob('%:p:h/.vim/session.vim')))
      execute 'mksession! %:p:h/.vim/session.vim'
    endif
  endfunction

  fu! RestoreSess()
    if !empty(expand(glob('%:p:h/.vim/session.vim')))
      execute 'so %:p:h/.vim/session.vim'
      if bufexists(1)
        for l in range(1, bufnr('$'))
          if bufwinnr(l) == -1
            exec 'sbuffer ' . l
          endif
        endfor
      endif
    endif
  endfunction

  autocmd VimLeave * call SaveSess()
  autocmd VimEnter * nested call RestoreSess()
  command! CreateSess call CreateSess()

  set sessionoptions-=options

