set cmdheight=1  " 设定命令行的行数为 1

set backspace=indent,eol,start " 使vim可以用退格键删除
set cursorline   " 高亮当前行
set autochdir    " 自动切换当前目录为当前文件所在的目录

set mouse= " 禁用鼠标

" set paste        " 粘贴插入模式
set number       " 显示行号
set noswapfile   " 禁用交换文件
set encoding=utf-8 " 设置默认编码格式
set timeoutlen=500 " 快捷键之间的最长时间间隔
" set clipboard=unnamedplus " 设置默认寄存器/剪切板为+

set cursorline   " 突出显示当前行
set ruler        " 打开状态栏标尺

" -- 搜索相关配置
set noincsearch  " 禁用输入搜索内容时就显示搜索结果
set hlsearch     " 搜索时高亮显示被找到的文本
" set nowrapscan   " 禁用搜索时循环查找
set ignorecase   " 搜索时忽略大小写

" -- 在80列处显示限制线
set colorcolumn=81
" git commit message页面在70列显示限制线
autocmd FileType gitcommit set colorcolumn=71

" 自动回到上次退出时光标所在位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nmap t0 :tablast<CR>
nnoremap to :b #<CR>

" 切换sign显示
function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=yes
        let b:signcolumn_on=1
    endif
endfunction

" 窗口管理 =============================================================== START
set splitbelow " 默认下方分窗
set splitright " 默认右侧分窗
" 纵向分屏
" nmap <C-]> :vsp<CR>
nmap <C-]> :botright vs<CR>
" 窗口宽度调整
nnoremap <M-.> 4<C-W><
nnoremap <M-,> 4<C-W>>
" 窗口高度调整
nnoremap <M-;> 4<C-W>-
nnoremap <M-'> 4<C-W>+
" 窗口最大化
nnoremap <C-W>z <C-W>\| <C-W>_

nnoremap <M--> <C-W>\| <C-W>_
nnoremap <M-=> <C-W>=
" 窗口管理 =============================================================== END

" normal模式下替换当前单词，非全词匹配
nnoremap <Leader>r :%s/<C-r><C-w>/
nnoremap <M-s> :%s/<C-r><C-w>/


" Alias
command AliasTest echo 'test1' | echo 'test2'

noremap <leader>s :so ~/.config/nvim/init.vim<cr>

" 可视模式下复制多行到剪切板文件中
vmap <c-c> y :!echo -e "\n" >> ~/clipboard<cr> :'<,'>w! >>~/clipboard<cr>
" 普通模式下复制当前行到剪切板文件中
nmap <c-c> yy :!echo -e "\n"  >> ~/clipboard<cr> :,w! >>~/clipboard<cr>

" 切换行号/tab/sign显示
" noremap <silent> <Leader>l :set invnu<CR> :set invlist<CR> :call ToggleSignColumn()<CR>
noremap <silent> <Leader>l :set invnu<CR> :set invlist<CR>
" 取消高亮
noremap <silent> <Leader>h :noh<CR>
noremap <silent> <Enter> :noh<CR>
" 切换自动缩进
noremap <Leader>a :set invautoindent<CR> :set paste<CR>

" 普通模式下Alt+Enter插入新行
nmap <M-Enter> o<ESC>
" 普通模式下Alt+s插入空格
" nmap <M-s> i<space><ESC>
" 普通模式下Alt+i插入空格
nmap <M-i> i<space><ESC>
" 普通模式下Alt+p粘贴到行尾
nmap <M-p> A <ESC>p

" 普通模式下向上移动多行
nmap <C-Up>   6k
" 普通模式下向下移动多行
nmap <C-Down> 6j

" 插入模式向上移动多行
inoremap <C-Up>   <ESC>6ka
" 插入模式向下移动多行
inoremap <C-Down> <ESC>6ja
" 插入模式跳到下一个单词，忽略“-”等符号
inoremap <C-n> <C-O>W
inoremap <C-right> <C-O> W
" 插入模式跳到上一个单词，忽略“-”等符号
inoremap <C-p> <C-O>B
inoremap <C-left> <C-O>B

" 插入模式下删除到单词结尾，不包括换行
inoremap <C-d> <C-O>cw
" 插入模式下删除当前单词
inoremap <M-d> <C-O>ciw

" 插入模式下撤销
inoremap <C-u> <C-O>u
inoremap <M-u> <C-O>u
" 插入模式下重做
inoremap <C-r> <C-O><C-R>
inoremap <M-r> <C-O><C-R>

" 插入模式下alt+.增加缩进
inoremap <M-.> <ESC>v>i
" 插入模式下alt+,减小缩进
inoremap <M-,> <ESC>v<i

" 普通模式下撤销，相当于禁用ctrl+z
nmap <C-z> u

" 普通模式下按一次>增加缩进
nmap > >>
" 普通模式下按一次<减小缩进
nmap < <<

autocmd BufEnter * setlocal formatoptions-=cro " 禁用自动注释

" 主题和高亮 ============================================================= START
" set termguicolors
let g:onedark_config = {'style': 'darker'}
" let g:onedark_config = {'style': 'warmer'}
" colorscheme onedark

let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_foreground = 'original'
" colorscheme gruvbox-material

" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox

" set notermguicolors
" let g:vim_monokai_tasty_machine_tint = 1
" colorscheme vim-monokai-tasty

" set notermguicolors
" colorscheme molokai

" todo/fixme等高亮
hi Todo ctermbg=darkred guibg=#df0000
" hi Todo ctermbg=red "todo/fixme等高亮
" hi Todo ctermfg=white "todo/fixme等高亮
" hi Todo ctermbg=190 ctermfg=black "todo/fixme等高亮
" hi Todo ctermfg=white "todo/fixme等高亮
" hi Todo ctermfg=darkmagenta "todo/fixme等高亮
syntax on        " 自动语法高亮

" 高亮c语言文件中的自定义关键词
autocmd Syntax * syn keyword cTodo contained NOTE KEY DEBUG
autocmd Syntax * syn keyword vimTodo contained NOTE KEY
syn keyword cTodo contained NOTE KEY DEBUG
syn keyword vimTodo contained NOTE KEY
" 主题和高亮 ============================================================= END


" -- tab和缩进配置 ======================================================= START
set list listchars=tab:>-\ ,trail:- " 显示tab和行尾空格
set tabstop=4     " tab的显示宽度
set shiftwidth=4  " reindent 操作(<<和>>)时缩进的列数
set softtabstop=4 " 插入模式下退格键回退缩进的长度
set expandtab " 默认用空格替换tab
" 快捷键切换是否用空格替换tab
" noremap <Leader>et :set expandtab!<CR>
" 全局tab转空格
noremap <Leader>ts :set expandtab<CR> :set tabstop=4<CR> :%retab!<CR>
" noremap <Leader>t4 :set tabstop=4<CR> :set shiftwidth=4<CR> :set softtabstop=4<CR> :set expandtab<CR>
" noremap <Leader>t8 :set tabstop=8<CR> :set shiftwidth=8<CR> :set softtabstop=8<CR> :set noexpandtab<CR>

" 定义自动命令组，避免与全局自动命令冲突
augroup TabSettings
    autocmd!
augroup END

function! ToggleTabSettings()
    " 清除之前的自动命令，避免重复注册自动命令
    autocmd! TabSettings BufEnter

    if &expandtab
        " 如果当前是 expandtab 模式，切换到 noexpandtab 模式
        set noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
        " 注册自动命令，切换buffer时自动调整tab配置为 noexpandtab
        autocmd TabSettings BufEnter *.c,*.h set tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab
        " autocmd TabSettings BufEnter *.c,*.h set tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab | echo "tab8 and noexpandtab"
        echo "tab8 and noexpandtab"
    else
        " 如果当前是 noexpandtab 模式，切换到 expandtab 模式
        set expandtab tabstop=4 shiftwidth=4 softtabstop=4
        " 注册自动命令，切换buffer时自动调整tab配置为 expandtab
        autocmd TabSettings BufEnter *.c,*.h set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
        " autocmd TabSettings BufEnter *.c,*.h set tabstop=4 shiftwidth=4 softtabstop=4 expandtab | echo "tab4 and expandtab"
        echo "tab4 and expandtab"
    end
endfunction

nnoremap <silent> <space><tab> :call ToggleTabSettings()<CR>
" -- tab和缩进配置 ========================================================= END

" -- vim-visual-star-search ============================================== START
" https://www.vim.org/scripts/script.php?script_id=4335
function! s:VStarsearch_searchCWord()
    let wordStr = expand("<cword>")
    if strlen(wordStr) == 0
        echohl ErrorMsg
        echo 'E348: No string under cursor'
        echohl NONE
        return
    endif

    if wordStr[0] =~ '\<'
        let @/ = '\<' . wordStr . '\>'
        call histadd('search', '\<' . wordStr . '\>') " add to search history
    else
        let @/ = wordStr
        call histadd('search', wordStr) " add to search history
    endif

    let savedUnnamed = @"
    let savedS = @s
    normal! "syiw
    if wordStr != @s
        normal! w
    endif
    let @s = savedS
    let @" = savedUnnamed
endfunction

" https://github.com/bronson/vim-visual-star-search/
function! s:VStarsearch_searchVWord()
    let savedUnnamed = @"
    let savedS = @s
    normal! gv"sy
    let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
    call histadd('search', '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')) " add to search history
    let @s = savedS
    let @" = savedUnnamed
endfunction

nnoremap <silent> * :call <SID>VStarsearch_searchCWord()<CR>:set hls<CR>
vnoremap <silent> * :<C-u>call <SID>VStarsearch_searchVWord()<CR>:set hls<CR>
" -- vim-visual-star-search ============================================== END


" 函数跳转相关配置 ======================================================= START
function! GoToPrevFunc()
    call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")
    call search('(', "bw")
    execute "normal! b"
endfunction

function! GoToNextFunc()
    execute "normal! ]["
    call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")
    call search('(', "bw")
    execute "normal! b"
endfunction

function! GoToCurFunc()
    " j向上移动一行，用于当前光标在函数末尾“}”的情况
    " 再][跳转到函数末尾的"}"，%跳转到函数开头的"{"
    execute "normal! k][%"
    " 接下来向前搜索左括号(
    call search('(', "bw")
    " 向前一个单词跳转到函数名处
    execute "normal! b"
endfunction

" 借助tagbar实现跳转到当前函数名, 先向下移动一行, 再向上找tag
function! GoToCurFuncTag()
    execute "normal! j"
    execute "TagbarJumpPrev"
endfunction

" 函数体中的任意位置跳转到函数名处
" noremap <M-f> :call GoToCurFunc()<CR>
noremap <silent> <M-f> :call GoToCurFuncTag()<CR>
" nnoremap <M-f> :normal j<CR> :TagbarJumpPrev<CR>

" jump to the previous function
nnoremap <silent> [[ :call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
" jump to the next function
nnoremap <silent> ]] :call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>
" 函数跳转相关配置 ======================================================= END

" visual 模式下替换文本 ================================================== START
" Visual模式下获取选中的文本
function! GetVisualSelect()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "")
endfunction

" Visual模式自定义文本替换功能
" 选择多行时，默认每行均会执行一次函数，添加range关键字则仅执行一次，或者在call之前添加<c-u>
" https://vi.stackexchange.com/questions/18937/how-to-have-vnoremap-call-function-once
function! SubstitueVisualSelect()
" function! SubstitueVisualSelect() range
    let mode=visualmode()
    if mode==# "v" " visual模式下，替换选择的字符串，直到文件末尾
        let str = GetVisualSelect()
        " call feedkeys(printf(":.,$s/%s", str), 'n') " 从当前位置替换到文件末尾
        call feedkeys(printf(":%%s/%s", str), 'n') " 全文替换
    elseif mode==# "V" " visual line模式下，在选择的行内替换
        call feedkeys(":'<,'>s/", 'n')
    elseif mode==# "\<C-v>" " visual block模式，在选择的行内替换
        call feedkeys(":'<,'>s/", 'n')
    endif
endfunction

xnoremap s :<c-u>call SubstitueVisualSelect()<cr>
" visual 模式下替换文本 ================================================== END
