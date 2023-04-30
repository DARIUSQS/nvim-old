:set number
:set relativenumber
:set autoindent
:set tabstop=4
set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/voldikss/vim-floaterm' "floatterm
Plug 'https://github.com/NLKNguyen/papercolor-theme' "Colorscheme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/cohama/lexima.vim' "For auto brackets
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
set encoding=UTF-8

call plug#end()

"NERDTree KeyMaps
nnoremap <C-d> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

"Telescope KeyMaps
nnoremap <C-f> :Telescope find_files<CR>

"Floatterm Keymaps
autocmd VimEnter * FloatermNew
autocmd VimEnter * FloatermToggle!
nnoremap <F3> :FloatermToggle!<CR>

set background=light
colorscheme PaperColor

nmap <F8> :TagbarToggle<CR>
:set completeopt-=preview " For No Previews

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

