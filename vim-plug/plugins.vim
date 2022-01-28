" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " NERD File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status Bar 
    Plug 'vim-airline/vim-airline'
    " Status Bar Themes 
    Plug 'vim-airline/vim-airline-themes'
    " Fuzzy find 
    Plug 'ctrlpvim/ctrlp.vim'
    " More syntax support
    Plug 'vim-syntastic/syntastic', {'for': 'python'}
    " NERD Commenter
    Plug 'preservim/nerdcommenter'
    " Rust compatibility
    Plug 'rust-lang/rust.vim'
    " Vim-Be-Good
    Plug 'ThePrimeagen/vim-be-good'
call plug#end()

" ----- VIM - SYNTASTIC -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pylint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


