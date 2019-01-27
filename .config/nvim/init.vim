call plug#begin()

Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'myusuf3/numbers.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'markonm/traces.vim'
Plug 'manu-mannattil/vim-longlines'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'dylanaraps/wal.vim'

call plug#end()

"let g:OmniSharp_server_path = '/home/lappy486/.omnisharp/omnisharp-roslyn/run'
let g:OmniSharp_proc_debug = 1

""""" VIM-CLOSETAG OPTIONS """""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
""""""""""


""""" Settings based on :help nvim-defaults and vim-sensible """""
set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set display=lastline
set encoding=utf-8
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set mouse=a
set nrformats=hex
set sessionoptions-=options
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set viminfo+=!
set wildmenu
""""""""""


""""" Usability Options """""
" Make it so that vim doesn't make ~ or .un~ files
set noundofile
set nobackup

set nowrap
set colorcolumn=80
set number relativenumber
set ruler
set scrolloff=1
set sidescrolloff=5
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" User , as the leader; and user ,, to switch betwen buffers
let mapleader=","
nnoremap <leader><leader> :b#<CR>

" Load matchit.vim, if a newer version isn't already installed.
" Neovim includes matchit.vim as a regular plug-in.
if !exists("g:loaded_matchit") && findfile("plugin/matchit.vim", &runtimepath) ==# ""
  runtime! macros/matchit.vim
endif

" vim: fdm=marker:sw=2:sts=2:et
""""""""""



"""""Split options"""""

set splitbelow
set splitright

"split navigations

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
""""""""""


"""""Tabs"""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
""""""""""
