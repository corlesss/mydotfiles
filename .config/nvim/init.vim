" ▗▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▖
" ▐▌▗▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▖▐▌
" ▐▌▐███████████████████    █████████████████████████████████████████████████▌▐▌
" ▐▌▐████████████████████▄▄██████████████████████████████████████████████████▌▐▌
" ▐▌▐█▙    ▜██████▛    ▟    █   ▘    ▝▜▛      ▝▜██   ▝     ▝▜████▀▀▘    ▝▀▜██▌▐▌
" ▐▌▐██▙    ▜████▛    ▟█    █                   ▜█     ▄▄▄   ▜█▛    ▄▄▄▖   ▜█▌▐▌
" ▐▌▐███▙    ▜██▛    ▟██    █    ▟██▄    ▟██▄    █    ▟███▙   ▛   ▗▟████▙   █▌▐▌
" ▐▌▐████▙    ▜▛    ▟███    █    ████    ████    █    ████████▌   ███████████▌▐▌
" ▐▌▐█████▙        ▟████    █    ████    ████    █    ████████▙   ▝█████▛   █▌▐▌
" ▐▌▐▀  ▀██▙      ▟█████    █    ████    ████    █    █████████▙    ▀▀▀▘   ▟█▌▐▌
" ▐▌▐▄  ▄███▙    ▟██████    █    ████    ████    █    ██████████▙▖       ▄███▌▐▌
" ▐▙▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▟▌
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                      IMPORTANT VARIABLES AND SETTINGS                     ║
    "Settings and variables that need to be set before anything else
    " Set <leader> to <,>
    let mapleader=","
    let maplocalleader=","

    if has('nvim')
        let $VIMDIR=$HOME."/.config/nvim"
        let $VIMCONFIG=$VIMDIR."/init.vim"
    else
        let $VIMDIR=$HOME."/.vim"
        let $VIMCONFIG=$VIMDIR."/vimrc"
    endif
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                  PLUG.VIM                                 ║
    "Plugin loading and management
    call plug#begin()
"""" AESTHETICS 
    Plug 'itchyny/lightline.vim'           "Lightweight statusbar
    Plug 'noahfrederick/vim-noctu'         "Terminal color based colorscheme
"""" AUTO FEATURES
    Plug 'jiangmiao/auto-pairs'            "Auto type matching pairs (e.g. '[')
    Plug 'powerman/vim-plugin-autosess'   "Auto save and auto load session
    Plug 'alvan/vim-closetag'              "Automatically close HTML tags
    Plug 'myusuf3/numbers.vim'             "Auto swap in & out of relativenumber
    " Disabled due to a large number of calls that caused scrolling to hitch
    Plug 'markonm/traces.vim'              "Highlights text modified by commands
"""" COMMANDS
    Plug 'tpope/vim-commentary'            "Language agnostic commenting
    Plug 'michaeljsmith/vim-indent-object' "Select indendation-based text object
    Plug 'terryma/vim-expand-region'       "Repeat command, expand object region
    Plug 'tpope/vim-surround'              "Surround text objects with chars
"""" PYTHON
    Plug 'python-mode/python-mode'         "Add python functionality to vim 
"""" SYNTAX
    Plug 'skammer/vim-css-color'           "Provides inline color preview in CSS
    Plug 'hail2u/vim-css3-syntax'          "Provides CSS3 syntax
    Plug 'numirias/Semshi'                 "Semantic highlighting
    Plug 'dbeniamine/todo.txt-vim'         "Todo.txt syntax and features
"""" TOOLS 
    Plug 'ap/vim-buftabline'               "Shows open buffers in a tabline
    "Plug 'ctrlpvim/ctrlp.vim'             "Search buffers, files, mru, and tags
    Plug 'itchyny/calendar.vim'            "Calendar app with gCal support
    Plug 'tpope/vim-fugitive'              "Git Wrapper
    Plug 'junegunn/goyo.vim'               "Distraction-free writing
    Plug 'junegunn/limelight.vim'          "Highlight current textblock
    Plug 'tommcdo/vim-lion'                "Keystroke-based alignment
    Plug 'vim-scripts/mru.vim'             "Browse most recently used files
    Plug 'lifepillar/vim-mucomplete'       "Minimalist vimscript autocompletion
    Plug 'dhruvasagar/vim-table-mode'      "Easy creation of text-based tables
    Plug 'godlygeek/tabular'               "Plug in to align text
    Plug 'vimwiki/vimwiki'                 "Personal wiki in vim ,w
    Plug 'maxbrunsfeld/vim-yankstack'      "Let ya see old yanks
"""" LAPPY ONLY
    if has('nvim')
        Plug 'SirVer/ultisnips'            "Snippetes, expand code via shorthand
        Plug 'honza/vim-snippets'          "Repository for snippets
        Plug 'lambdalisue/suda.vim'        "Provides sudo functionality
    endif
    Plug 'justinmk/vim-sneak'              "Find text by two letters
"""" Load matchit.vim, if a newer version isn't already installed.
    call plug#end()
    " matchit.vim is a command used to let 'if','else','end' be considered as
    " points to jump between when using <%>
    " Neovim includes matchit.vim as a regular plug-in.
    if !exists("g:loaded_matchit") && findfile("plugin/matchit.vim", &runtimepath) ==# ""
      runtime! macros/matchit.vim
    endif
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                              PLUGIN SETTINGS                              ║
    "Settings for the plugins
    " Map ,p to toggle autopairs
    " Turns out <Alt-p> toggles autopairs
    " map <leader>p :<C-U>call AutoPairsToggle()<CR>

    let g:autosess_dir = $VIMDIR.'/autosess' "Autosess directory
    let g:lightline = {'colorscheme': 'default'}
"""" BUFTABLINE OPTIONS  
    let g:buftabline_show=1         "Only show when there are at least two buffers
    let g:buftabline_numbers=2      "Show buffer numbers in tabs
    let g:buftabline_indicators=1   "Show whether the buffer is modified
    let g:buftabline_separators='│' "Create dividers between buffers
    
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
    let g:closetag_filenames = '*.html,*.xhtml,*.phtml' "Filenames that use tags
    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx' "Files with non-closing tag
    let g:closetag_filetypes = 'html,xhtml,phtml' "Filetypes that use the plugin
    let g:closetag_xhtml_filetypes = 'xhtml,jsx' "Non-closing tag filetypes
    let g:closetag_emptyTags_caseSensitive = 1 "Makes tagclosing case-sensitive
    let g:closetag_shortcut = '>' " Shortcut for closing tags, default is '>'
    let g:closetag_close_shortcut = '<leader>>' " Add > at without closing tag
"""" LIMELIGHT OPTIONS
    let g:limelight_conceal_ctermfg='darkgrey'
"""" GOYO OPTIONS
    function! s:goyo_enter()
        Limelight
        set showtabline=0
        set scrolloff=999
        mode
    endfunction

    function! s:goyo_leave()
        :call buftabline#update(0)
        Limelight!
        set scrolloff=7
    endfunction

    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
"""" MUCOMPLETE OPTIONS  
    " These three settings are mandatory
    set completeopt+=menuone  "Show menu when there is only one suggestion
    set completeopt+=noselect "Don't insert until user selects an option
    set shortmess+=c          "Turn off completion messages
    
    let g:mucomplete#enable_auto_at_startup = 1 "Start plugin at startup
    "let g:mucomplete#completion_delay = 1      "Completion delay

    " Remapping because of split navigation collision
    imap <c-p> <plug>(MUcompleteCycFwd)
    imap <c-n> <plug>(MUcompleteCycBwd)
"""" NUMBERS 
    let g:numbers_exclude = ['goyo_pad']
"""" ULTISNIPS SETTINGS 
    let g:UltiSnipsExpandTrigger = "<F5>"       " Do not use <tab>
    let g:UltiSnipsJumpForwardTrigger = "<C-N>" " Do not use <c-j>
"""" VIMWIKI SETTINGS
    let g:vimwiki_list = [{'path': '~/drive/vimwiki', 
                         \ 'path_html': '~/drive/vimwiki/html',
                         \ 'ext': '.md'}]
    "Custom linkhandler
    function! VimwikiLinkHandler(link)
        let link = a:link
        if link =~# '^vim:'
            let link = link[4:]
            execute link
            return 1
        elseif link=~# '^vfile:'
            let link = link[1:]
            let link_infos = vimwiki#base#resolve_link(link)
            execute 'edit '.fnameescape(link_infos.filename)
            return 1
        else
            return 0
        endif
    endfunction
    
"""" YANKSTACK SETTINGS
    " Set P to cycle through old pastes
    nmap <C-p> <Plug>yankstack_substitute_older_paste
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                  BASED ON NVIM-DEFAULTS AND VIM-SENSIBLE                  ║
    "Settings based on nvim defaults and vim sensible
    filetype plugin on          "Read plugin file for filetype
    filetype indent on          "Read indent file for filetype
    syntax enable               "Enable Syntax

    set autoread                "Reread if file has been modified outside of vim
    set complete-=i             "Autocomplete shouldn't scan included files (?)
    set display=lastline        "Display @@@ when a line can't fit on display
    set history=500             "Vim will only save last 500 commands
    set laststatus=2            "Always show status line
    set mouse=a                 "Mouse support in all modes
    set nocompatible            "Remove settings for vi compatibility
    set sessionoptions-=options "Don't save local settings when making a session
    set tabpagemax=50           "Max number of tab pages to be opened
    set tags=./tags;,tags       "Filenames to be used for tags
    set ttyfast                 "Faster drawing of screen
    set viminfo+=!              "Save vim info but not settings with lowercases
    set wildmenu                "Commands show a menu and allow tab completion

    set listchars=tab:>\ ,trail:-,nbsp:+ "Characters to use for :list command
"""" INDENTATION & FORMATTING 
    " Settings regarding indentation and formatting of text
    set autoindent "Automatic copy of indents from previous line
    set backspace=indent,eol,start "<BS> over autoindent, linebreak, and inserts 
    set encoding=utf-8 "Set utf-8 encoding
    set formatoptions=c "Insert comments automatically based on context
    set formatoptions+=j "Remove comments when joining with <J>
    set formatoptions+=n "Automatically format numbered lists
    set formatoptions+=q "Allow <gq>
    " set formatoptions+=t  "Autowrap text
    set nrformats=hex "Use base-16 when adding or subtracting an 0x with <C-A/X>
    set smarttab "Automatically insert spaces instead of tabs at start of line
"""" SEARCH 
    " Settings affecting searching2
    set hlsearch "Highlight searched terms
    set ignorecase "Ignores case when searching
    set incsearch "Update screen to highlight matches when typing in a search
    set smartcase "Ignores case when searching, unless using an uppercase
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                  COMMANDS                                 ║
    "Custom commands and keybindings                                    #COMMANDS

    " Use ,<space> to remove search highlighting
    nnoremap <leader><space> :nohlsearch<CR>
    " Use ,c to show a colored line on the 80th column
    nnoremap <leader>c :<C-U>execute "set colorcolumn=".(&colorcolumn == "" ? "81" : "")."<bar>hi Colorcolumn ctermbg=darkgrey"<CR><CR>
    " Use <space> to fold and unfold text
    nnoremap <space> za
    "Write the date
    nnoremap <leader>d i<C-R>=strftime('%Y-%m-%d')<CR><Esc>

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
    if has('nvim')
        command! W execute 'w suda://%'
    else
        command! W execute 'w !sudo tee % > /dev/null' <bar> edit! 
    endif

    "Command to edit init.vim
    command! Config edit $VIMCONFIG
    "Command to reload init.vim
    command! Source w <bar> source $VIMCONFIG
    "Open a file with user's preferred program
    command! Open !xdg-open % 
"""" BUFFER COMMANDS 
    " Close the current buffer
    map <leader>bd :Bclose<cr>:tabclose<cr>gT
    " Close all the buffers
    map <leader>ba :bufdo bd<cr>
    " Close all other buffers
    map <leader>bo :<C-U>wa<bar>%bd<bar>e#<cr><cr>

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
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                    TABS                                   ║
   "Settings that affect indentation and tabs                              #TABS

    "set autoindent   "Automatically copy indentation from previous line
    "set smarttab     "Insert spaces instead of tabs at start of line
    set tabstop=4     "The visual width of a tab (but doesn't insert spaces!)
    set softtabstop=4 "How many spaces Vim treats like a tab
    set shiftwidth=4  "How many spaces Vim uses when autoindenting
    set smartindent   "Automatically indents, when contextually appropriate
    set expandtab     "Insert spaces instead of tabs
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                             FILETYPE SETTINGS                             ║
   "Settings for specific filetypes                                    #FILETYPES
    " Add CSS autocompletion when opening a css file
    autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
    " Add html autocompletion when opening a html file
    autocmd Filetype html set omnifunc=htmlcomplete#CompleteHTML
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                                   MISC.                                   ║
" Settings that don't fit other categories                                #MISC

    "set colorcolumn=81        "Create a colored line at the 81st column
    set lazyredraw             "Don't redraw screen during macros
    set matchtime=5            "Highlighting blinking with match and the rate
    set modelineexpr           "Allow end-of-file settings
    set nowrap                 "Don't wrap lines
    "set number relativenumber "Show linenumbers; and relative linenumbers
    "set ruler                 "Show cursor line and column number and file %
    set scrolloff=7            "How many lines between cursor and screen edge 
    set sidescrolloff=5        "How many columns between cursor and screen edge
    set showmatch              "highlight matching bracket while hovering
    set splitbelow             "Place split below the current window
    set splitright             "Place split right of the current window
    "set updatetime=300        "Milliseconds of idling before swap is written
    set virtualedit=block      "Allow v-block to select outside text constraints

    "Set the undodir for writing undo file
    exec "set undodir=".$VIMDIR."/undodir"
    set undofile               "Create a file with a history of undos
    set nobackup               "Don't save a backup file
    set writebackup            "Only creates backup for file when writing, deletes after write
    colorscheme noctu          "Use a colorscheme based on the terminal colors

    "Use system clipboard if possible; if not use '*' register
    if has('unnamedplus') 
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif

"" ╙───────────────────────────────────────────────────────────────────────────╜

"" ╓───────────────────────────────────────────────────────────────────────────╖
"""║                           LOCAL VIMRC SETTTINGS                           ║
    " These lines set local settings for this file when read.
"""" Defines how folds are handled
    function! VimFoldText()
        let s:info = '('.string(v:foldend-v:foldstart).')'
        if v:foldlevel == 1
            let s:line = '   '.getline(v:foldstart)[3:]
        else
            let s:line = '   ║ '.getline(v:foldstart)[5:].repeat(' ', (79 - strwidth(getline(v:foldstart))) ).'║'
        endif

        return s:line[:strwidth(s:line)-len(s:info)].s:info.'║'
    endfunction
"""" Fold Expression explanation
    " Basically uses an expression to determine the fold level of a line. A
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
"" ╙───────────────────────────────────────────────────────────────────────────╜
"" vim:foldmethod=expr
"" vim:foldlevel=0
"" vim:foldexpr=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
"" vim:foldtext=VimFoldText()
