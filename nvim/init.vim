set encoding=utf-8
set termencoding=utf-8

set mouse=a

" Path stuff
let g:python3_host_prog = '/usr/local/bin/python3'

" Plugin Config
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'

Plug 'neomake/neomake'

Plug 'dag/vim-fish'

Plug 'mattn/emmet-vim'

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'zchee/deoplete-jedi'

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

" Color settings
set termguicolors
set background=dark
colorscheme gruvbox

" Airline Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Ctrl-P Config
let g:ctrlp_user_command = ['.git', 'cd %s; and git ls-files . --cached --other --exclude-standard']

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store']

" NERDCommenter Config
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
" let g:NERDCommentEmptyLines = 1

" SuperTab Config
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCrMapping = 1

" Deoplete Config
let g:deoplete#enable_at_startup = 1

" Python Config
let g:neomake_python_enabled_makers = ['mypy', 'pylama']
autocmd! BufWritePost,BufEnter *.py Neomake

" Emmet Config
autocmd FileType html,css,htmldjango,eelixir EmmetInstall
let g:html_indent_autotags = 'html'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<C-T>'

" Vim Markdown Preview Config
let vim_markdown_preview_toggle=2
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

autocmd! WinLeave * set nocursorline nocursorcolumn
autocmd! WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set colorcolumn=80

set showcmd  " Show status for running commands
set cmdheight=2  " Make command line taller
set shortmess=aI  " Shorten messages
set ignorecase smartcase  " Case insensitive search unless caps
set confirm  " Confirm rather than fail
set noerrorbells  " Disable all bells
set relativenumber  " Relative line numbering
set number  " Except current line
set expandtab  " Expand tabs to spaces
set shiftwidth=4 softtabstop=4 tabstop=4  " 4 space indents
set whichwrap=<,>,[,],h,l  " Configure line wrapping
set splitbelow splitright  " Splitting behavior
autocmd! BufNewFile,BufRead * setlocal formatoptions-=cro  " Disable Vim autoindent

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  :bp<cr>
noremap  <Right> :bn<cr>

" Move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove trailing whitespace on save
autocmd! BufWritePre * :%s/\s\+$//e
