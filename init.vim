source $HOME\AppData\Local\nvim\settings\plugin.vim
if !exists('g:vscode')
  source $VIMRUNTIME/mswin.vim
  source $HOME\AppData\Local\nvim\settings\common.vim
  "source $HOME\AppData\Local\nvim\settings\closetag.vim
  "source $HOME\AppData\Local\nvim\settings\nerdtree.vim
  source $HOME\AppData\Local\nvim\settings\nerdcommenter.vim
  source $HOME\AppData\Local\nvim\settings\ctrlp.vim
  source $HOME\AppData\Local\nvim\settings\coc.vim
  source $HOME\AppData\Local\nvim\settings\git.vim
"  source $HOME\AppData\Local\nvim\settings\darcula.vim
endif
