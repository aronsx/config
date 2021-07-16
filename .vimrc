" =============================================================================
" VIM PLUG
" =============================================================================
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin('~/.config/nvim/autoload/plugged')


Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'morhetz/gruvbox'                  " красивая тема
Plug 'ervandew/supertab'                " табуляция 
Plug 'preservim/nerdcommenter'          " комментирование 
Plug 'majutsushi/tagbar'          	    " Class/module browser
Plug 'klen/python-mode'                 " питонячий модуль
Plug 'vim-airline/vim-airline'   	    " Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes'   " vim airline themes
Plug 'majutsushi/tagbar'          	" Class/module browser
Plug 'davidhalter/jedi-vim' 		    " Jedi-vim autocomplete plugin
Plug 'tmhedberg/SimpylFold'             " Умное определение вкладок по отступам
"Plug 'Valloric/YouCompleteMe'           " автодополнение, нужно компилить модули
Plug 'epheien/termdbg'			        " дебагер
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-utils/vim-man'                " vim Man pages
Plug 'rosenfeld/conque-term'            " term in vim

"Plug '42Paris/42header' 				" 42 header
" Initialize plugin system
call plug#end()


"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
" прогон открытого файла через autopep8 и запись
"let g:pymode_rope = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 0

" документация
"let g:pymode_doc = 0
"let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
"let g:pymode_lint_write = 0

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
"let g:pymode_folding = 0

" возможность запускать код
"let g:pymode_run = 0

" Disable choose first function/method at autocomplete
"let g:jedi#popup_select_first = 0

"=====================================================
" User hotkeys
"=====================================================
" FZF on f2
map <F2> :FZF<CR>

" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии
" ConqueTerm
" запуск интерпретатора на F5
nnoremap <F5> :ConqueTermSplit ipython<CR>
" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
" передача текущего файла в пайтон
nnoremap <F7> :!python3 %<CR>
" компиляция и запуск файла С
" nnoremap <S-F7> :!gcc -Wall -Wextra -Werror % && ./a.out<CR>
nnoremap <F8> :!gcc -Wall -Wextra -Werror % && ./a.out<CR>
" прогон открытого файла через autopep8 и запись
" nnoremap <F8> :!autopep8 -i %<CR>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0
" проверка кода в соответствии с PEP8 через <leader>8
autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

" автокомплит через <Ctrl+Space>
"inoremap <C-space> <C-x><C-o>

" autoopen NerdTree
" autocmd vimenter * NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif

" mapping for ctrl-w window leader
nnoremap <Tab> <C-w>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Q> <C-W><C-Q>

"tabs navigations
nnoremap <space>1 1gt
nnoremap <space>2 2gt
nnoremap <space>3 3gt
nnoremap <space>4 4gt
nnoremap <space>5 5gt
nnoremap <space>6 6gt
nnoremap <space>7 7gt
nnoremap <space>8 8gt 
nnoremap <space>9 9gt
nnoremap <space>0 0gt

" folding on space
nnoremap <space><space> za

"commenter on ctrl / don't work
"map <C-kDivide> :call NERDComment("x", "Invert")<CR>

" leader on space
let mapleader =" "

"=====================================================
" User settings
"=====================================================

" отключаем пищалку и мигание
set visualbell t_vb=
set novisualbell

set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк
set scrolloff=5	     " 5 строк при скролле за раз

" отключаем бэкапы и своп-файлы
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files

" настройки Vim-Airline
set laststatus=2
let g:airline_theme='biogoo'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" --- Russian key ---
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" columnborder
set colorcolumn=80


" open : on rus langmap
map Ж :


" color theme
colorscheme gruvbox
let g:airline_theme='gruvbox'
set bg=dark

"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$', '__pycache__', '\.pyc$']
" nerdtree ignored files
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

" mapping for commit
"map <F5> :!git add % && git commit -m '% '<left>


" numbers and visual
set number
set cursorline
set mouse=a
syntax on

" for nerdcommenter
filetype on
filetype plugin on
filetype plugin indent on

" supertab 
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"


" Enable folding
set foldmethod=indent
set foldlevel=99

" system clipboard
set clipboard=unnamed

" git on airline
let g:airline#extensions#vimagit#enabled = 1

" map uppercase wq
:command WQ wq
:command Wq wq
:command W w
:command Q q

" закрытие автопревью питона после автодополнения
let g:ycm_autoclose_preview_window_after_completion=1

" tabulation settings
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

" autotab
set autoindent

" turn off tabulation on paste
" set paste

" clear selections on esc
"nnoremap <esc> :noh<cr>

" show dockstring buttom
set splitbelow
