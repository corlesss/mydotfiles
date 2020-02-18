" ▗▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▖
" ▐                                                                            ▌
" ▐                    ▗██▖                                                    ▌
" ▐                    ████                                                    ▌
" ▐                    ▝██▘                                                    ▌
" ▐                                                                            ▌
" ▐      ████     ████ ████ ▗████████▖▗██████▖   ████▄▟███▙▖     ▄▟█████▙▄     ▌
" ▐      ████     ████ ████ ██████████████████▖  ███████████▖  ▗████▛▀▀▜███▖   ▌
" ▐      ▐███▖   ▗███▌ ████ ████▘ ▝█████▘ ▝████▖ ████▛▘  ▝███ ▗████▘    ▝███▖  ▌
" ▐      ▝███▌   ▐███▘ ████ ████   ▝████   ▝████ ████     ▝█▛ ▟███▘      ▝▀▀   ▌
" ▐       ████   ████  ████ ████    ████    ████ ████         ████             ▌
" ▐       ▝███▌ ▐███▘  ████ ████    ████    ████ ████         ▜███▖      ▄▄▖   ▌
" ▐  ▗███▖ ▝███████▘   ████ ████    ████    ████ ████         ▝████▖   ▗████   ▌
" ▐  █████  ▝█████▘    ████ ████    ████    ████ ████          ▝███████████▘   ▌
" ▐  ▝███▘   ▝███▘     ████ ████    ████    ████ ████            ▝▜█████▛▀     ▌
" ▐                                                                            ▌
" ▐                                                                            ▌
" ▝▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▘
"""
call plug#begin()
"""" COMMANDS 
    " Plugins that add commands 
    " Auto completes a pair (e.g. typing in a '(' will add an ) immediately after
    Plug 'jiangmiao/auto-pairs'
    " Select surrounding objects (like `"`) used via {Operator}s{Object}
    Plug 'tpope/vim-surround'
    " Language agnostic commenting via gc{motion} or {selection}gc
    Plug 'tpope/vim-commentary'
    " Allows for selecting indentation-based text objects via {op}ai or {op}ii
    Plug 'michaeljsmith/vim-indent-object'
    " Find text by two letters, currently configured to work with <s>
    Plug 'justinmk/vim-sneak'

"""" AUTO FEATURES 
    " Plugins that automatically perform actions 
    " Automatically close an HTML tag
    Plug 'alvan/vim-closetag'
    " Displays in real time any text modified by an Ex command
    Plug 'markonm/traces.vim'
    " Auto switch between relative and absolute number in normal and insert mode
    Plug 'myusuf3/numbers.vim'
    " Automatically load session if Vim is run without arguments
    Plug 'powerman/vim-plugin-autosess'
    
"""" AESTHETICS 
    " Plugins that make vim look better 
    " Statusline that is lightweight and uses little features
    Plug 'itchyny/lightline.vim'
    " Dynamic colour scheme based on the results of pywal
    Plug 'dylanaraps/wal.vim'

"""" TOOLS 
    " Plugins that perform an action on command 
    " Allows for easy creation of text-based tables
    Plug 'dhruvasagar/vim-table-mode'
    " Shows open buffers in a tabline
    Plug 'ap/vim-buftabline'
    " Minimalist autocompletion written in Vim script
    Plug 'lifepillar/vim-mucomplete'
    " Plugin to align text
    Plug 'godlygeek/tabular'


"""" LAPPY ONLY 
    " Plugins for nvim 
    " Snips for Vim, helps expand code form shorthand; uses deoplete
    Plug 'SirVer/ultisnips'
    " Repository for snippets, supplies snippets for ultisnip
    Plug 'honza/vim-snippets'
call plug#end()
""

"" ###############  
 " #   PLUGINS   # 
 " ############### 
""" ######################################
  " #  IMPORTANT VARIABLES AND SETTINGS  #
  " ######################################
    " Variables and settings that need to be set before anything else
    " Set <leader> to <,>
    let mapleader=","

    let $VIMDIR=$HOME."/.config/nvim"
    let $VIMCONFIG=$VIMDIR."/init.vim"

"" ========================================================================== ""

""" PLUGIN SETTINGS 
    " Settings for plugins 
    " autosess settings
    let g:autosess_dir = $VIMDIR.'/autosess'
    " autopairs setting
    map <leader>p :<C-U>call AutoPairsToggle()<CR>

"""" BUFTABLINE OPTIONS  
    " Settings for buftabline 
    " Set Buftabline to only show when there is at least two buffers
    let g:buftabline_show = 1

    " Show buffer numbers in tabs
    let g:buftabline_numbers = 2
    
    " Show whether the buffer is modified
    let g:buftabline_indicators = 1

    " Create dividers between buffers
    let g:buftabline_separators = "│"
    
    " Commands to swap between buffers 
    nmap 1<leader> <Plug>BufTabLine.Go(1)
    nmap 2<leader> <Plug>BufTabLine.Go(2)
    nmap 3<leader> <Plug>BufTabLine.Go(3)
    nmap 4<leader> <Plug>BufTabLine.Go(4)
    nmap 5<leader> <Plug>BufTabLine.Go(5)
    nmap 6<leader> <Plug>BufTabLine.Go(6)
    nmap 7<leader> <Plug>BufTabLine.Go(7)
    nmap 8<leader> <Plug>BufTabLine.Go(8)
    nmap 9<leader> <Plug>BufTabLine.Go(9)
    nmap 0<leader> <Plug>BufTabLine.Go(10)
"""" CLOSETAG OPTIONS 
    " settings for closetag 
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
"""" ULTISNIPS SETTINGS 
    let g:UltisnipsExpandTrigger = "<F5>"       " Do not use <tab>
    let g:UltisnipsJumpForwardTrigger = "<C-N>" " Do not use <c-j>

"""" MUCOMPLETE OPTIONS  
    " Settings for mucomplete 
    " Mandatory options; set completion menu to open up when there is only one
    " option and don't insert until user (mucomplete) selects an option
    set completeopt+=menuone
    set completeopt+=noinsert
    set shortmess+=c " Turn off completion messages
    
    " Start plugin at startup
    let g:mucomplete#enable_auto_at_startup = 1
    
    " Completion delay to prevent overzealousness
    " let g:mucomplete#completion_delay = 1

    " Remapping because of split navigation collision
    imap <c-p> <plug>(MUcompleteCycFwd)
    imap <c-n> <plug>(MUcompleteCycBwd)
    " Remapping because of Ultisnips collision
    imap <tab> <plug>(MUcompleteFwd)
    imap <s-tab> <plug>(MUcompleteBwd)
"" ========================================================================== ""

""" NVIM ONLY 
" Settings exclusively for nvim 
" Load matchit.vim, if a newer version isn't already installed.
" matchit.vim is a command used to let 'if','else','end' be considered as
" points to jump between when using <%>
" Neovim includes matchit.vim as a regular plug-in.
if !exists("g:loaded_matchit") && findfile("plugin/matchit.vim", &runtimepath) ==# ""
  runtime! macros/matchit.vim
endif

"" ========================================================================== ""

""" NVIM-DEFAULTS & VIM SENSIBLE 
" Settings based on nvim defaults and vim sensible
filetype plugin on " Read plugin file for filetype
filetype indent on " Read indent file for filetype
syntax enable " Enable Syntax

set autoread "If file has been changed outside of vim, reread file
set complete-=i "Autocomplete shouldn't scan included files 
set display=lastline "Display @@@ when a line can't fit on display 
set history=500 "Vim will only save last 500 commands
set laststatus=2 "Always show status line
set listchars=tab:>\ ,trail:-,nbsp:+ "Characters to use for :list command
set mouse=a "Mouse support in all modes
set sessionoptions-=options "Do not save local settings when making a session
set tabpagemax=50 "Max number of tab pages to be opened
set tags=./tags;,tags "Filenames to be used for tags
set ttyfast "Faster drawing of screen
set viminfo+=! "Retain vim info but not settings with lowercases
set wildmenu "Commands show autocomplete and allow tab to complete

"""" INDENTATION & FORMATTING 
    " Settings regarding indentation and formatting of text
    set autoindent "Automatic copy of indents from previous line
    set backspace=indent,eol,start "<BS> over autoindent, linebreak, and inserts 
    set encoding=utf-8 "Set utf-8 encoding
    set formatoptions=t  "Autowrap text
    set formatoptions+=c "Insert comments automatically based on context
    set formatoptions+=q "Allow <gq>
    set formatoptions+=j "Remove comments when joining with <J>
    set formatoptions+=n "Automatically format numbered lists
    set nrformats=hex "Use base-16 when adding or subtracting an 0x with <C-A/X>
    set smarttab "Automatically insert spaces instead of tabs at start of line

"""" SEARCH 
    " Settings affecting searching2
    set hlsearch "Highlight searched terms
    set ignorecase "Ignores case when searching
    set incsearch "Update screen to highlight matches when typing in a search
    set smartcase "Ignores case when searching, unless using an uppercase

"" ========================================================================== ""

""" COMMANDS 
" Custom commands and keybindings 
" Use ,<space> to remove search highlighting
nnoremap <leader><space> :nohlsearch<CR>
" Use ,c to show a colored line on the 80th column
nnoremap <leader>c :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>
" Use <space> to fold and unfold text
nnoremap <space> za

"Use <C-H/J/K/L> to move to associated split in normal mode
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
" Same as above but for insert mode
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
" Terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

"use :W to overcome permission errors
command! W execute 'w !sudo tee % > /dev/null' <bar> edit! 

"Command to edit init.vim
command! Config edit $VIMCONFIG
"Command to reload init.vim
command! Source source $VIMCONFIG
"Open a file with user's preferred program
command! Open !xdg-open % 
"""" BUFFER COMMANDS 
    " Commands involving buffers 
    
    " Close the current buffer
    map <leader>bd :Bclose<cr>:tabclose<cr>gT

    " Close all the buffers
    map <leader>ba :bufdo bd<cr>

    map <leader>l :bnext<cr>
    map <leader>h :bprevious<cr>
    " Use ,, to swap between buffers
    nnoremap <leader><leader> :<C-U>execute "b" . (v:count == 0 ? "#" : "v:count")<CR>

"""" WORD PROCESSOR MODE 
    " Command to let vim act more like a wordprocessor 
    func! WordProcessor()
        "" COMMANDS 
        "Move by visual lines not by literal line
        map j gj
        map k gk
        "" FORMATING 
        setlocal formatoptions=1  "Break line before 1 char words
        setlocal formatoptions+=2 "Use second line of paragraphs for autoindent
        setlocal noexpandtab "Use tabs instead of spaces
        setlocal wrap "Wrap lines that go past the screen edge
        setlocal linebreak "Lines will only break at certain characters
        "" DICTIONARY 
        setlocal spell "Do spell checking and in english
        setlocal spelllang=en_ca,en_us "Set dictionary to Canadian & US English
        setlocal thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
        setlocal complete+=s "Makes autocomplete search the thesaurus
    endfu

    com! WP call WordProcessor()

    " Command to undo WP 
    func! NoWordProcessor()
        " Undo all of the WP settings
        unmap j
        unmap k

        set complete<
        set expandtab<
        set formatoptions<
        set linebreak<
        set spell<
        set thesaurus<
        set wrap<
    endfu
    com! NWP call NoWordProcessor()

"" ========================================================================== ""

""" TABS 
" Settings that affect indentation and tabs 
"set autoindent
"set smarttab "Automatically insert spaces instead of tabs at start of line
set tabstop=4 "The visual width of a tab (but doesn't insert spaces!)
set softtabstop=4 "How many spaces Vim treats like a tab
set shiftwidth=4 "How many spaces Vim uses when autoindenting
set smartindent "Automatically indents, but mostly when contextually appropriate
set expandtab "Insert spaces instead of tabs

"" ========================================================================== ""

""" FILETYPE SETTINGS  
" OPTIONS FOR SPECIFIC FILETYPES 
autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype html set omnifunc=htmlcomplete#CompleteHTML
"" ========================================================================== ""

""" MISC. OPTIONS 
" Options that don't fit other categories 
"Make it so that vim doesn't make ~ or .un~ files
set noundofile 
set nobackup

set writebackup "Only creates backup for file when writing, deletes after write

if has('unnamedplus') "Use system clipboard if possible; if not use '*' register
    "
    set clipboard=unnamedplus
else
    set clipboard=unnamed
    "
endif

exec "set undodir=".$VIMDIR."/undodir"
set undofile

"set colorcolumn=81 "Create a colored line at the 81st column
set lazyredraw "Don't redraw screen during macros
set matchtime=5 "blink highlighting match and rate
set modelineexpr " Allow following lines to be read
set nowrap "Don't wrap lines
"set number relativenumber "Show linenumbers; in normal mode show relative #'s
"set ruler "Show line and column number of cursor and % of total document
set scrolloff=7 "Set how many lines buffer between cursor and end of screen
set sidescrolloff=5 "How many columns between cursor and side of screen
set showmatch "highlight matching bracket when hovering
set splitbelow "Place a vertical split below the current window
set splitright "Place a horizontal split right of the current window
"set updatetime=300 "How many milliseconds of idling before swap file is written
set virtualedit=block " Allow blockmode to select outside of text constraints

"" ========================================================================== ""

" These lines set local settings for this file when read.
"" vim:foldmethod=expr
"" vim:foldlevel=0
"" vim:foldexpr=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
""" Basically uses an expression to determine the fold level of a line. A
  " pseudocode expression might be;
  " │ for (i; lines(vimrc); i++) {
  " │     line = vimrc[i]
  " │     if line.regex(^"") {
  " │         return ( index(line.regex(""*)) - 2 )
  " │     }
  " │     else {
  " │         return vimrc[i-1].foldlevel()
  " │     }
  " │ }
  " Or to put it in other words; it will make determine the fold level by the
  " number of '"'s at the start of a line (with ""=0 and """=1 and so on).
  " If there are no "s then the line takes the foldlevel of the previous line
