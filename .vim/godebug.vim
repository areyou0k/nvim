" vimspector
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/vimspector_json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=🛑 texthl=Normal
sign define vimspectorBPDisabled text=🚫 texthl=Normal
sign define vimspectorPC text=👉 texthl=SpellBad
"推出
noremap <leader>dr ::VimspectorReset<CR>
" 增加断点
nmap <leader>da <Plug>VimspectorToggleBreakpoint
nmap <leader>ds <Plug>VimspectorStop
" 开始
nmap <leader>dc <Plug>VimspectorContinue
" 步入
nmap <leader>di <Plug>VimspectorStepInto
" 步出
nmap <leader>do <Plug>VimspectorStepOut
"up down stack
nmap <leader>du <Plug>VimspectorUpFrame
nmap <leader>dd <Plug>VimspectorDownFrame
" 下一步
nmap <leader>dn <Plug>VimspectorStepOver
"nmap <silent><nowait><space>dn <Plug>VimspectorStepOver
"nmap <A-n> <Plug>VimspectorStepOver
"nmap <silent><nowait><space>db <Plug>VimspectorToggleBreakpoint
"nmap <A-b> <Plug>VimspectorToggleBreakpoint
"nmap <silent><nowait><space>ds <Plug>VimspectorContinue
"nmap <silent><nowait><space>dr <Plug>VimspectorRestart
"nmap <silent><nowait><space>dp <Plug>VimspectorPause
"nmap <silent><nowait><space>dt <Plug>VimspectorStop
"nmap <silent><nowait><space>df <Plug>VimspectorAddFunctionBreakpoint
"nmap <silent><nowait><space>dc <Plug>VimspectorToggleConditionalBreakpoint
"nmap <silent><nowait><space>do <Plug>VimspectorStepOut
"nmap <A-o> <Plug>VimspectorStepOut
"nmap <silent><nowait><space>di <Plug>VimspectorStepInto
"nmap <A-i> <Plug>VimspectorStepInto
"nmap <silent><nowait><space>dq <Plug>VimspectorReset<CR>
"nmap <silent><nowait><space>dlc <Plug>VimspectorShowOutput Console<CR>
"nmap <silent><nowait><space>dld <Plug>VimspectorShowOutput stderr<CR>
"nmap <silent><nowait><space>dlo <Plug>VimspectorShowOutput Vimspector-out<CR>
"nmap <silent><nowait><space>dle <Plug>VimspectorShowOutput Vimspector-err<CR>
"nmap <silent><nowait><space>dls <Plug>VimspectorShowOutput server<CR>
"nmap <silent><nowait><space>dlt <Plug>VimspectorShowOutput Telemetry<CR>
"nmap <silent><nowait><space>de :<C-u>VimspectorEval<space>
"nmap <silent><nowait><space>dw :<C-u>VimspectorWatch<space>
"nmap <A-w> :<C-u>VimspectorWatch<space>
