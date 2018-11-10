set tabstop=4
syntax on
execute pathogen#infect('~/.vim/bundle/{}')

set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add
set spell

"""
" NERDTree Configuration
"""
" keybinding to open nerdtree
map <C-m> :NERDTreeToggle<CR>
" keybinding to open nerd tree if there is no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Custome NERDTree keybindings
" next tab
map <C-l> :tabn<CR>
" previous tab
map <C-h> :tabp<CR>
" new tab
map <C-n> :tabnew<CR>
