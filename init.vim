set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set incsearch
set mouse=a
set history=1000
"set colorcolumn=80
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set clipboard=unnamed
" set modifiable
set cmdheight=1
set cursorline


" Plugins
call plug#begin('~/.vim/plugged')

" Typescript
"Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
 " Vim-Plug
Plug 'mhartington/nvim-typescript', {'for': ['typescript', 'tsx'], 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'


"vim-javascript
Plug 'pangloss/vim-javascript'
"vim-jsx
Plug 'mxw/vim-jsx'
"autocompletion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

"emmet-vim
Plug 'mattn/emmet-vim'

" black formatter
Plug 'ambv/black'

" ayu theme
Plug 'ayu-theme/ayu-vim'

" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" ALE
Plug 'w0rp/ale'

" git gutter
Plug 'airblade/vim-gitgutter'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" deoplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" neoterm
Plug 'kassio/neoterm'

" markdown preview
Plug 'iamcco/markdown-preview.vim'

"scala
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala'

"elm
Plug 'elmcast/elm-vim'

"vimterial
Plug 'larsbs/vimterial_dark'

" NERDTree
Plug 'scrooloose/nerdtree'

" PEGjs
Plug 'alunny/pegjs-vim'


" Initialize plugin system
call plug#end()

" automatically bring up nerdtree
autocmd VimEnter * NERDTree
" auto-close nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Get rid of the help text at top
let NERDTreeMinimalUI=1


set termguicolors
syntax on
"let ayucolor="dark"
"
"colorscheme ayu
colorscheme vimterial_dark

"let g:deoplete#enable_at_startup = 0


let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:ale_linters = {
\    'haskell': ['hdevtools'],
\    'javascript': ['eslint'],
\}
let g:ale_linters_explicit = 1

let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

let g:neoterm_default_mod = 'vertical'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:deoplete#enable_at_startup = 1
