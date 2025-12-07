" nvim-colorizer.lua ===========================================================
let g:css_color_enable_for_all = 1

" undotree =====================================================================
nnoremap <F3> :UndotreeToggle<CR>

" nerdtree =====================================================================
nnoremap <F1> :NERDTreeToggle<CR>

" tagbar =======================================================================
nnoremap <F2> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
nnoremap [t :TagbarJumpPrev<CR>
nnoremap ]t :TagbarJumpNext<CR>
" nnoremap ]t :call tagbar#jumpToNearbyTag(1, 'nearest')<CR>
" nnoremap [t :call tagbar#jumpToNearbyTag(-1, 'nearest')<CR>

" commentary ===================================================================
" 自定义注释符号
autocmd FileType java,c,cpp set commentstring=//\ %s

" 使用ctrl+/注释
nmap <C-/> gcc
vmap <C-/> gc
nmap <C-_> gcc
vmap <C-_> gc

" 使用ctrl+/注释，并移动到下一行
" nmap <C-/> <Plug>Commentary :normal! j<CR>
" vmap <C-/> <Plug>Commentary :normal! j<CR>

" easyclip =====================================================================
let g:EasyClipPreserveCursorPositionAfterYank=1 " 复制后光标位置维持不变
let g:EasyClipUsePasteToggleDefaults=0 " 禁用ctrl+p ctrl+n快捷键支持

" 在命令模式下，使用ctrl+v粘贴
cmap <C-V> <plug>EasyClipCommandModePaste
" 格式化和未格式化粘贴之间切换
nmap <leader>cf <plug>EasyClipToggleFormattedPaste

" 修改Cut相关快捷键
let g:EasyClipUseCutDefaults = 0
nmap x <Plug>MoveMotionPlug
xmap x <Plug>MoveMotionXPlug
nmap xx <Plug>MoveMotionLinePlug
nmap X <Plug>MoveMotionEndOfLinePlug

" del删除字符但不拷贝到寄存器
nmap <del> i<del><right><esc>


" vim-mark =====================================================================
let g:mw_no_mappings = 1 " 默认不注册快捷键
" 高亮关键字
" autocmd VimEnter * 3Mark KEY
" autocmd VimEnter * 3Mark NOTE

if !hasmapto('<Plug>MarkSet', 'n')
    nmap <unique> <M-m> <Plug>MarkSet
endif
if !hasmapto('<Plug>MarkSet', 'x')
    xmap <unique> <M-m> <Plug>MarkSet
endif
" No default mapping for <Plug>MarkIWhiteSet.
if !hasmapto('<Plug>MarkRegex', 'n')
    nmap <unique> <M-r> <Plug>MarkRegex
endif
if !hasmapto('<Plug>MarkRegex', 'x')
    xmap <unique> <M-r> <Plug>MarkRegex
endif
if !hasmapto('<Plug>MarkAllClear', 'n')
    nmap <unique> <M-n> <Plug>MarkAllClear
endif
" No default mapping for <Plug>MarkAllClear.
" No default mapping for <Plug>MarkConfirmAllClear.
" No default mapping for <Plug>MarkToggle.

" if !hasmapto('<Plug>MarkSearchCurrentNext', 'n')
"     nmap <unique> <Leader>* <Plug>MarkSearchCurrentNext
" endif
" if !hasmapto('<Plug>MarkSearchCurrentPrev', 'n')
"     nmap <unique> <Leader># <Plug>MarkSearchCurrentPrev
" endif
" if !hasmapto('<Plug>MarkSearchAnyNext', 'n')
"     nmap <unique> <Leader>/ <Plug>MarkSearchAnyNext
" endif
" if !hasmapto('<Plug>MarkSearchAnyPrev', 'n')
"     nmap <unique> <Leader>? <Plug>MarkSearchAnyPrev
" endif
" if !hasmapto('<Plug>MarkSearchNext', 'n')
"     nmap <unique> * <Plug>MarkSearchNext
" endif
" if !hasmapto('<Plug>MarkSearchPrev', 'n')
"     nmap <unique> # <Plug>MarkSearchPrev
" endif

" startify =====================================================================
let g:startify_session_persistence = 1
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_lists = [
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'files',     'header': ['   MRU']            },
    \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ ]

let g:startify_custom_header = []
let g:startify_custom_header_quotes = [['Startify']]
let g:startify_session_sort = 1 " session按时间排序
let g:startify_enable_special = 0 " 不显示empty

" easymotion ===================================================================
" https://github.com/easymotion/vim-easymotion/blob/master/doc/easymotion.txt#L98
" Move to char
" nmap <space>s <Plug>(easymotion-sl)
" 替代vim原生的f键
nmap f <Plug>(easymotion-sl)
" Move to line
" nmap <space>j <Plug>(easymotion-bd-jk)
nmap <space>j <Plug>(easymotion-j)
nmap <space>k <Plug>(easymotion-k)
" Move to word
nmap <space>e <Plug>(easymotion-bd-e)
nmap <space>w <Plug>(easymotion-bd-w)

" undotree =====================================================================
set undofile " 启用全局undo，重新打开文件也可恢复历史修改
let g:undotree_SetFocusWhenToggle = 1

" vim-tmux-navigator ===========================================================
let g:tmux_navigator_no_mappings = 1

nnoremap <M-Left>  :TmuxNavigateLeft<cr>
nnoremap <M-Down>  :TmuxNavigateDown<cr>
nnoremap <M-Up>    :TmuxNavigateUp<cr>
nnoremap <M-Right> :TmuxNavigateRight<cr>
nnoremap <M-/>     :TmuxNavigatePrevious<cr>

" vim-bookmarks ================================================================
nmap ml <Plug>BookmarkShowAll
nmap mr <Plug>BookmarkClear
nmap mc <Plug>BookmarkClear
let g:bookmark_center = 1
let g:bookmark_auto_save = 1

let g:bookmark_highlight_lines = 1
" 深灰
" highlight BookmarkLine ctermbg=234
highlight BookmarkLine ctermbg=235
" 蓝色
" highlight BookmarkLine ctermbg=39
highlight BookmarkAnnotationLine ctermbg=238

highlight BookmarkSign ctermfg=red


let g:bookmark_manage_per_buffer = 1
" Finds the Git super-project directory based on the file passed as an argument.
function! g:BMBufferFileLocation(file)
    let filename = 'vim-bookmarks'
    let location = ''
    if isdirectory(fnamemodify(a:file, ":p:h").'/.git')
        " Current work dir is git's work tree
        let location = fnamemodify(a:file, ":p:h").'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', fnamemodify(a:file, ":p:h").'/.;')
    endif
    if len(location) > 0
        return simplify(location.'/.'.filename)
    else
        return simplify(fnamemodify(a:file, ":p:h").'/.'.filename)
    endif
endfunction

" gitgutter ====================================================================
let g:gitgutter_diff_base = 'HEAD'

" 行号彩色显示，monokai主题中行号栏的默认背景色为236
set signcolumn=no " 不可使用signcolumn=number
let g:gitgutter_highlight_linenrs=1

" 行号颜色配置
" 蓝色-添加 橙色-修改 红色-删除 紫色-修改+删除
highlight GitGutterAddLineNr          ctermfg=51  ctermbg=236 guifg=#00d7ff guibg=#303030
highlight GitGutterChangeLineNr       ctermfg=202 ctermbg=236 guifg=#ff5f00 guibg=#303030
highlight GitGutterDeleteLineNr       ctermfg=9   ctermbg=236 guifg=#ff0000 guibg=#303030
highlight GitGutterChangeDeleteLineNr ctermfg=165 ctermbg=236 guifg=#d700ff guibg=#303030

" signcol颜色显示
highlight GitGutterAdd                ctermfg=51      guifg=#00d7ff
highlight GitGutterChange             ctermfg=DarkRed guifg=#ff0000
highlight GitGutterDelete             ctermfg=DarkRed guifg=#ff0000
highlight GitGutterChangeDelete       ctermfg=DarkRed guifg=#ff0000

" 折叠未修改区域
nmap <Leader>hf :GitGutterFold<CR>
nmap ghf :GitGutterFold<CR>
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nmap <silent> ]c :call GitGutterNextHunkCycle()<CR>
nmap <silent> <space>c :call GitGutterNextHunkCycle()<CR>

" Cycle through hunks in current buffer
function! GitGutterNextHunkCycle()
  let line = line('.')
  let col = col('.')
  GitGutterNextHunk
  if line('.') == line
    1
    silent! GitGutterNextHunk
    if line('.') == 1
        call cursor(line, col)
    endif
  endif
endfunction

" vim-illuminate ===============================================================
let g:Illuminate_insert_mode_highlight = 0 " 插入模式下也高亮当前单词
" let g:Illuminate_useDeprecated = 1
" autocmd VimEnter * hi illuminatedWord ctermbg=237
" autocmd VimEnter * hi illuminatedCurWord cterm=underline ctermbg=237
" 匹配的其他单词的颜色
hi illuminatedWord ctermbg=237
" 当前单词的颜色
hi illuminatedCurWord cterm=underline ctermbg=237
let g:Illuminate_delay = 1000


" local-highlight.nvim =========================================================
hi LocalHighlight ctermbg=237
hi LocalHighlightCurWord cterm=underline ctermbg=237
