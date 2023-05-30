:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

:set completeopt-=preview
call plug#end()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" hotkeys
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-]> :TagbarToggle<CR>



" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

colorscheme gruvbox

lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "python", "php", "vim", "lua", "cpp" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF
