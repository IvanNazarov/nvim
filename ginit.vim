if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility
    "set guifont=FuraCode\ Regular\ Nerd\ Font\ Complete:h14
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>
else
  GuiTabline 0
  GuiPopupmenu 0
  GuiFont! FuraCode\ Nerd\ Font:h14

endif
