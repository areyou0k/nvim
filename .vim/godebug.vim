noremap <LEADER>da <C-w>j:DlvAddBreakpoint<CR>
"开始debug
noremap <LEADER>dd <C-w>j:DlvDebug<CR>
"清除断点
noremap <LEADER>dc <C-w>j:DlvClearAll<CR>
" go test
noremap <LEADER>run <C-w>j:DlvTest<CR>
"全屏
"let g:delve_new_command = "enew"
"水平
let g:delve_new_command= "new"
noremap <C-s> <Esc>:w!<CR>
" tagbar
map tag :TagbarToggle<CR>
