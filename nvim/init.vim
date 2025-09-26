set number
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set visualbell
set scrolloff=5

call plug#begin ()

Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' ", {'on': 'NERDTreeToggle'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar for code navigation
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/lepture/vim-jinja'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/matze/vim-move'
Plug 'voldikss/vim-floaterm'
Plug 'vim-python/python-syntax'
Plug 'alvan/vim-closetag'
Plug 'EdenEast/nightfox.nvim' " nightfox theme
Plug 'windwp/nvim-autopairs' " auto pairs 

call plug#end ()

lua << EOF 
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.setup{
	check_ts = true, 
	enable_check_bracket_line = true,
	enable_moveright = true,
	map_cr = true,
}

npairs.add_rules{
	Rule("<", ">")
}
EOF


nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

colorscheme duskfox
let g:airline_theme='lucius'

" :colorscheme gruvbox "
" let g:airline_theme='gruvbox' "

nmap <F6> :TagbarToggle<CR>

inoremap <silent><expr> <TAB> 
      \ pumvisible() ? coc#_select_confirm() : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text'
    \]

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

"Mover linhas para cima e para baixo"

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==

vnoremap <A-Down> :m >+1<CR>gv=gv
vnoremap <A-Up> :m <-2<CR>gv=gv

