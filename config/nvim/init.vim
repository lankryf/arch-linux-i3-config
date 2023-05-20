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


colorscheme gruvbox

lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "python", "php", "vim", "lua" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF

