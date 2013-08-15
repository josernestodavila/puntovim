" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.
filetype off
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

" runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set binary                       " Do not add EOL at EOF
set tabstop=4                    " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                 " Show the status line all the time
set noshowmode                   " Hide the default mode text.

set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
" Useful status information at bottom of screen
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" StatusLine configuration for syntastic plugin
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Esquema de Colores
"
" Vividchalk colores
" colorscheme vividchalk
" Solarized Colors
" colorscheme solarized
set background=dark
"let g:Solarized_termcolors=256
"let g:solarized_termtrans=0
call togglebg#map("<F5>")

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

if has("gui")
    colorscheme solarized
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set guioptions-=m
endif

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" RagTag plugin config
let g:ragtag_global_maps = 1

" Map TaskList plugin
map <F2> :TaskList<CR>

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Gist-vim
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_open_browser_after_post = 1

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Supertab completion
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax

" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" Add json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

highlight BadWhitespace ctermbg=red guibg=red

if has("autocmd")
    " code indentation
    au FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au FileType xhtml setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au FileType htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufNewFile,BufRead admin.py setlocal filetype=python.django
    au BufNewFile,BufRead models.py setlocal filetype=python.django
    au BufNewFile,BufRead urls.py setlocal filetype=python.django
    au BufNewFile,BufRead views.py setlocal filetype=python.django
    au BufNewFile,BufRead settings.py setlocal filetype=python.django
    au BufNewFile,BufRead forms.py setlocal filetype=python.django
    " au BufWritePost *.py call Flake8()
    au BufNewFile,BufRead *.py match BadWhitespace /\t\+/
    au BufNewFile,BufRead *.py match BadWhitespace /\s\+$/
endif

" Siempre pulso W por error xD
command! W :w

nmap <leader>d :set ft=htmldjango<CR>

" Simbols for tabstops and EOL's
set list
set listchars=tab:▸\ ,eol:¬

" Activar powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
