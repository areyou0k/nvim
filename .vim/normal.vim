:set ts=2
:set number
let mapleader=" "

colorscheme gruvbox
nmap <Leader><Leader>a :Ag <CR>
noremap <C-s> <Esc>:w!<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>
noremap <LEADER>z <C-w>j:wq<enter>
" 获取当前时间2021-04-25 09:32:34
nmap tn A<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
""allows FZF to open by pressing CTRL-a
map <C-a> :FZF<CR>
" easymotion
nmap s <Plug>(easymotion-overwin-f2)
"=== tabular
vmap ga :Tabularize /
" 设置的窗口宽度
let g:tagbar_width=30
"映射Tagbar的快捷键,按F8自动打开
map <F8> :TagbarToggle<CR>
"let g:go_fmt_command = 'goimports'
set timeout timeoutlen=300
set dir=~/.local/share/nvim/swap/
set clipboard+=unnamedplus
let g:python3_host_prog = "/opt/homebrew/bin/python3"
