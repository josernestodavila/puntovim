if has("gui_running")
    colorscheme inkpot
    set guifont=Consolas\ 11
else
    colorscheme elflord
endif
syntax on           " enable syntax highlighting
set mouse=a         " enable mouse
set nocompatible    " use vim defaults
set ls=2            " always show status line
set tabstop=4       " number of spaces for tab character
set shiftwidth=4    " number of spaces to (auto) indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set showmode        " display the current mode
set hlsearch        " highlight searches
set incsearch       " do incremental search
set ruler           " show the cursor position all the time
set laststatus=2
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set numberwidth=4   " line numbering takes up to 4 spaces
set ignorecase      "ignore case when searching
set linebreak       " linebreaks
set wrap            " set wrap for lines
"set nowrap          " stop lines from wrapping
"set noignorecase    " don't ignore case
set title           " show title in the console title bar
set ttyfast         " smoother changes
"set ttyscroll=0     " turn off scrolling
set bs=2            " backspace can delete previos characters
set backspace=indent,eol,start " more backspace settings
set modeline        " last lines in document sets vim mode
set modelines=3     " number of lines checked for modelines
set shortmess=atI   " abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set undolevels=200
set cpoptions=$cF
"set viminfo='20,<50,s10,h
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]  
filetype plugin indent on " turn on the indent plugins

autocmd FileType djangohtml,html,xhtml,xml source ~/.vim/plugin/closetag.vim

" set noautoindent    " turn off by default, enable for specific filetypes
" set nosmartindent   " turn off by default, enable for specific filetypes
" set nocindent       " turn off by default, enable for specific filetypes

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1

" syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

set expandtab		" tabs are converted to spaces
set sm				" show matching braces

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

map <F3> :NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>
map <F2> :marks 

" Map TaskList plugin
map T : TaskList<CR>
map P : TlistToggle<CR>
