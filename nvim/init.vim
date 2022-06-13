set encoding=utf-8
set termencoding=utf-8

set mouse=a

" Reloads vimrc after saving but keep cursor position
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source $MYVIMRC
       call setpos('.', save_cursor)
   endfun
endif
autocmd! BufWritePost $MYVIMRC call ReloadVimrc()

" Path stuff
let g:python_host_prog = '/Users/zachsommers/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/zachsommers/.pyenv/versions/neovim3/bin/python'
let g:ruby_host_prog = 'chruby-exec 2.6.3 -- neovim-ruby-host'

" Plugin Config
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
Plug 'w0rp/ale'
Plug 'neomake/neomake'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'jremmen/vim-ripgrep'

Plug 'dag/vim-fish'

Plug 'mattn/emmet-vim'

Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries',
                     \ 'for': 'go' }
Plug 'zchee/deoplete-go', { 'do': 'make',
                          \ 'for': 'go' }

" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern',
"                                  \ 'for': 'javascript' }
" Plug 'othree/jspc.vim', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }

Plug 'elzr/vim-json', { 'for': 'json' }

Plug 'rust-lang/rust.vim'

Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }

" Load this last
Plug 'ryanoasis/vim-devicons'

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
map \n :NERDTreeToggle<CR>
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

" ALE Config
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1

" Neomake Config
" let g:neomake_open_list = 2
" call neomake#configure#automake('rw')

" Multiple Cursor Config
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction
function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

" Python Config
" let g:neomake_python_enabled_makers = ['mypy', 'pylama']
autocmd! BufWritePost,BufEnter *.py Neomake

" Golang Config
autocmd FileType go set noexpandtab
autocmd FileType go set shiftwidth=4
autocmd FileType go set softtabstop=4
autocmd FileType go set tabstop=4
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>gt :GoDeclsDir<cr>
autocmd Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
autocmd Filetype go nmap <leader>gah <Plug>(go-alternate-split)
autocmd Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
autocmd FileType go nmap <F10> :GoTest -short<cr>
autocmd FileType go nmap <F9> :GoCoverageToggle -short<cr>
let g:go_auto_type_info = 1
autocmd FileType go nmap <F12> <Plug>(go-def)
let g:go_addtags_transform = "snakecase"

" Rust Config
let g:rustfmt_autosave = 1
let g:rust_conceal = 1
let g:rust_fold = 1
let g:rust_conceal_mod_path = 1
let g:rust_conceal_pub = 1

" SQL Config
autocmd FileType sql set shiftwidth=2
autocmd FileType sql set softtabstop=2
autocmd FileType sql set tabstop=2

" JavaScript Config
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" Run `npm install -g eslint_d`
let g:neomake_javascript_eslint_exe = '/usr/local/bin/eslint_d'
let g:neomake_javascript_flow_exe = './node_modules/.bin/flow'
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
autocmd! BufWritePost,BufEnter *.js* Neomake
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:javascript_plugin_flow = 1

" Emmet Config
autocmd FileType html,css,htmldjango,eelixir EmmetInstall
let g:html_indent_autotags = 'html'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<C-T>'

" Vim Markdown Preview Config
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

autocmd! WinLeave * set nocursorline nocursorcolumn
autocmd! WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set colorcolumn=80

set hidden  " Allow modified buffers to be hidden
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
set nowrap  " Prevent lines from visually wrapping
" set whichwrap=<,>,[,],h,l  " Configure line wrapping
set splitbelow splitright  " Splitting behavior
autocmd! BufNewFile,BufRead * setlocal formatoptions-=cro  " Disable Vim autoindent

" turn on persistent undo, and store it in the vim dir
set undofile
set undodir=~/.vim/undodir

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
