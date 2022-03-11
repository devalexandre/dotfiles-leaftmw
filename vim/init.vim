set encoding=UTF-8
set nocompatible
call plug#begin("$HOME/.config/nvim/plugged")
"coc server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"nerdtree
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"elixir
"Plug 'elixir-editors/vim-elixir'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1

"snippets
Plug 'honza/vim-snippets'

"theme
Plug 'navarasu/onedark.nvim'

"devicons 
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"maps 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>

call plug#end()
" Enable syntax highlighting
syntax on
"set theme 
colorscheme onedark
:set number

filetype plugin indent on
