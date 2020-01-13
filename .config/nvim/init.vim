call plug#begin()

" Allows for selecting indentation-based text objects via {op}ai or {op}ii
Plug 'michaeljsmith/vim-indent-object'
" Find text by two letters, currently configed to work with <s>
Plug 'justinmk/vim-sneak'
" Automatically close an HTML tag
Plug 'alvan/vim-closetag'
" Auto switch between relative and absolute number in normal and insert mode
Plug 'myusuf3/numbers.vim'
" Statusline that is lightweight and uses little features
Plug 'itchyny/lightline.vim'
" Select surrounding objects (like `"`) used via {Operator}s{Object}
Plug 'tpope/vim-surround'
" Language agnostic commenting via gc{motion} or {selection}gc
Plug 'tpope/vim-commentary'
" Displays in realtime any text modifed by an Ex command
Plug 'markonm/traces.vim'
" Auto completes a pair (e.g. typing in a '(' will add an ) immediately after
Plug 'jiangmiao/auto-pairs'
" Dynamic colourscheme based on the results of pywal
Plug 'dylanaraps/wal.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins \| call 
    \ deoplete#custom#option({
    \   \"max_list\": 50, 
    \   \"smart_case\": v:true,
    \   \"ignore_case\": v:true,
    \ })' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Snips for vim, helps expand code form shorthand; uses deoplete
Plug 'SirVer/ultisnips'
" Repository for snippets, supplies snippets for ultisnip
Plug 'honza/vim-snippets'
" Automatically load session if vim is run without arguements
Plug 'powerman/vim-plugin-autosess'
" Allows for easy creation of text-based tables
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

" autosess settings
let g:autosess_dir = '.'

""""" DEOPLETE OPTIONS """""
" let deoplete run
let g:deoplete#enable_at_startup = 1

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
set ignorecase
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set mouse=a
set nrformats=hex
set sessionoptions-=options
set smarttab
set smartcase
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set viminfo+=!
set wildmenu
""""""""""


""""" Usability Options """""
"Quick command to edit init.vim
command Config edit ~/.config/nvim/init.vim
" Make it so that vim doesn't make ~ or .un~ files
set noundofile
set nobackup

set updatetime=300
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

""""" Word Processor Mode """""
func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()
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
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
""""""""""

""""" Commands """""
" Open a file with user's preferred program
command Open !xdg-open %
" Remap <ctrl-h/j/k/l> to move between windows
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"""""""""


""""" Autocomplete """""
set iskeyword+=-
filetype plugin on
set omnifunc=csscomplete#CompleteCSS
autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype html set omnifunc=htmlcomplete#CompleteHTML

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
""""""
