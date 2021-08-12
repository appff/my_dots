if exists('g:included_nerdtree')
    finish
  endif
  let g:included_nerdtree = 1

  let NERDTreeBookmarksFile = "~/.vim/data" . "NERDTreeBookmarks"
  let NERDTreeDirArrowCollapsible = ""
  let NERDTreeDirArrowExpandable = ""
  let NERDTreeShowHidden = 1

 nnoremap <silent> <leader>e  :NERDTreeToggle<cr>
 nmap <Leader>r :NERDTreeFocus<cr> \| R \| <c-w><c-p>
