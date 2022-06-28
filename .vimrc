set nocompatible
filetype plugin on

call plug#begin()
" Themes
Plug 'jaredgorski/spacecamp'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'challenger-deep-theme/vim',{'as':'challenger-deep'}
Plug 'nikolvs/vim-sunbather'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyoz/purify', { 'rtp': 'vim' }

" Colors
Plug 'ciaranm/inkpot'

" Text editing
Plug 'preservim/vim-colors-pencil'

" Language packs
Plug 'sheerun/vim-polyglot'

" Scrolling
Plug 'psliwka/vim-smoothie'

" Commenting
Plug 'preservim/nerdcommenter'

" Nerdtree
Plug 'preservim/nerdtree'
call plug#end()

" Basic settings
set number
syntax on
set background=dark
colorscheme papercolor
let g:airline_theme='purify'
let mapleader = " " "mapleader set to space

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Navigating tabs
map <S-l> :tabn<CR>
map <S-h> :tabn<CR>

" ====NERDTree setting====
map <C-f> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
