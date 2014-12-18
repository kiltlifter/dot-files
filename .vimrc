set tabstop=4
syntax on
execute pathogen#infect('~/.vim/bundle/{}')

" keybinding to open nerdtree
map <C-m> :NERDTreeToggle<CR>
" keybinding to open nerd tree if there is no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
