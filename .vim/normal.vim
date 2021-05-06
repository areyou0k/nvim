:set ts=2
:set number
let mapleader=" "

colorscheme gruvbox
"colorscheme gruvbox-material
" 全文索引
"?           帮助，显示所有快捷键
"Enter/o     打开文件
"O           打开文件并关闭Quickfix
"go          预览文件，焦点仍然在Quickfix
"t           新标签页打开文件
"q           关闭Quickfix
let g:ackprg = 'ag --nogroup --nocolor --column'
map <c-u> :Ack<space>

noremap <C-s> <Esc>:w!<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>
" 获取当前时间2021-04-25 09:32:34
nmap tn A<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
""allows FZF to open by pressing CTRL-a
map <C-a> :FZF<CR>
" easymotion
nmap s <Plug>(easymotion-overwin-f2)
"=== tabular
vmap ga :Tabularize /
" 设置的窗口宽度
let g:tagbar_width=20
"映射Tagbar的快捷键,按F8自动打开
map tag :TagbarToggle<CR>

"let g:go_fmt_command = 'goimports'
set timeout timeoutlen=300
set dir=~/.local/share/nvim/swap/
set clipboard+=unnamedplus
let g:python3_host_prog = "/opt/homebrew/bin/python3"
