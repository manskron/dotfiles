scriptencoding utf-8

source ~/nvim/plugins.vim
source ~/nvim/treesitter.vim
source ~/nvim/lsp.vim
source ~/nvim/compe.vim
source ~/nvim/keys.vim
source ~/nvim/tree.vim

set termguicolors
" let g:tokyonight_style = "day"
" colorscheme tokyonigh
lua << EOF
require('github-theme').setup({
  themeStyle = "light"
})
EOF

"GENERAL
"allow tabcompletion for all files found
set wildmenu
"ignore case when searching
set ignorecase
"don't ignore if first letter is capitalized
set smartcase
set autoread
set undofile
set splitbelow splitright
set clipboard=unnamed
set expandtab
set softtabstop=2
set shiftwidth=2
set encoding=utf8
set scrolloff=10

set makeprg=c++\ -Wall\ -Werror\ -Wpedantic\ -std=c++17\ -g\ -o\ %<.o\ %

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile

