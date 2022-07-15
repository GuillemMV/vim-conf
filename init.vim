source $HOME/.config/nvim/vim-plug/plugins.vim

nmap <C-D> :NERDTreeToggle<CR>

set relativenumber

nmap <silent> <A-,> :BufferPrevious<CR>
nmap <silent> <A-.> :BufferNext<CR>

:set nu

syntax enable
filetype plugin indent on

" -- AUTOCOMPLETION --
filetype plugin on
set omnifunc=syntaxcomplete#Complete

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
