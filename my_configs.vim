call plug#begin('~/.vim/plugged')
" Add your plugin installations here, for example:
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
call plug#end()

set number relativenumber
nmap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

if has('termguicolors')
    " Insert mode: bar cursor
    let &t_SI = "\e[5 qke]12;red\a"
    let &t_SR = "\e[4 q"  " Replace mode: underline cursor
    let &t_EI = "\e[2 q"  " Normal mode: block cursor
endif
