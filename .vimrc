" pathogen bundles
filetype off

set nocompatible               " be iMproved
" set noswapfile
set nobackup
set nowritebackup
set noswapfile

" set powerline visibility
set laststatus=2

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Indent-Guides'
Bundle 'rails.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'delimitMate.vim'
" Plugin 'mattn/emmet-vim'
Bundle 'Syntastic'
Bundle 'jdonaldson/vaxe'
Bundle 'dsawardekar/ember.vim'
Bundle 'xml.vim'
" Bundle 'c.vim'
Bundle 'ruby.vim'
Bundle 'ack.vim'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'edkolev/tmuxline.vim'
Bundle 'bling/vim-airline'
Bundle 'The-NERD-tree'
Bundle 'vim-coffee-script'
Bundle 'ctrlp.vim'
Bundle 'tComment'
Bundle 'Tabular'
" Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'mxw/vim-jsx.git'
Bundle 'pangloss/vim-javascript'
" Bundle 'actionscript.vim'
Bundle 'surround.vim'
" Bundle 'python.vim'
" Bundle 'Markdown'
" Bundle 'vim-stylus'
Bundle 'bufexplorer.zip'
Bundle 'rainbow_parentheses.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'fugitive.vim'
Bundle 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'

" set ft of scss to css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.jst set filetype=html
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.tjs set filetype=coffee
au BufRead,BufNewFile *.styl set filetype=stylus
au BufRead,BufNewFile *.rabl set filetype=ruby

filetype plugin indent on
filetype plugin on

set mouse=a

" leader key
let mapleader=";"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

map <leader>l :NERDTreeToggle<cr>
map <leader>q :q<cr>
map <leader>s :w<cr>
map <leader>r \rr
map <leader>, :noh<cr>
map <leader>v :vs<cr>
map <leader>c :TComment<cr>
map <leader>h :set ft=html<cr>
map <leader>a :BufExplorer<cr>
map <D-p> :CtrlP
nmap <leader><leader> :b#<cr>
nmap <leader>' :CtrlPBuffer<cr>
nmap <leader>j :SyntasticCheck<cr>
nmap e <C-w>
nmap t vat
nmap 1 ^
nmap 0 $

" CtrlP
let g:ctrlp_extensions = ['tag']
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
" let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_dotfiles = 0 "so ctrlp won't search dotfiles/dotdirs
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_map = '<C-p>'
let g:ctrlp_custom_ignore = 'build'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_max_files = 0

" use git for ctrlP finding
let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'] }
endif

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat,*/node_modules/*,*/bower_components/*
"
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0
"
"tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set number
set vb
set smartindent
set autoindent
" set cindent
" set cinkeys=0{,0},:,0#,!,!^F
"case sensitive shtuff
set ic
set scs

"get rid of toolbar
if has("gui_running")
    set guioptions-=T
    "remove scrollbars
    set guioptions+=LlRrb
    set guioptions-=LlRrb
    set guifont=Source\ Code\ Pro:h13
endif

" syntax/coloring
:syntax enable
set background=dark
" set transparency=5
colorscheme solarized

set showmatch

set hlsearch
set incsearch
hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=grey ctermbg=green
" au! Buf;Read,BufNewFile *.scss         setfiletype sass
"
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59 ctermfg=white
highlight SpecialKey guifg=#4a4a59
set list
" fix backspace
set backspace=indent,eol,start

"status bar color based on mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermbg=red
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=magenta
  endif
endfunction

highlight LineNr ctermfg=grey
hi NonText ctermfg=7

let g:ycm_collect_identifiers_from_comments_and_strings = 1

" change cursor display
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
set fillchars+=vert:\ 

let g:mustache_abbreviations = 1

" change syntastic background color
hi SignColumn ctermbg=black

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=green

" default the statusline to green when entering Vim
hi statusline ctermfg=blue

" remove YouCompleteMe scratch ui
set completeopt=menu,menuone
"
" current directory is always matching the
" content of the active window
" set autochdir

" remember some stuff after quiting vim:
" marks, registers, searches, buffer list
set viminfo='20,<50,s10,h,%

set wildchar=<Tab> wildmenu wildmode=full
" set shell=zsh\ -i

" auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
