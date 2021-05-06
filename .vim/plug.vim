call plug#begin('~/.config/nvim/plugged')
"Plug 'junegunn/fzf.vim'
"Plug 'mkitt/tabline.vim'
"Palug 'ryanoasis/vim-devicons'
"Plug 'tpope/vim-surround' 
"Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
"Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
"tagbar
"Plug 'majutsushi/tagbar'
Plug 'preservim/tagbar'
"git
Plug 'tpope/vim-fugitive'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" debug
Plug 'puremourning/vimspector',{'do': './install_gadget.py --enable-go'}
" go
Plug 'fatih/vim-go'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" easy move
Plug 'easymotion/vim-easymotion'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" theme https://vimcolorschemes.com/
Plug 'morhetz/gruvbox'
" airline
Plug 'vim-airline/vim-airline'
"全文索引
Plug 'mileszs/ack.vim'
"菜单栏
Plug 'mhinz/vim-startify'
call plug#end()
