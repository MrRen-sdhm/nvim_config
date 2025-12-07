" Leaderf
let g:Lf_ShowDevIcons = 1 "不显示特殊图标，避免windterm中显示异常
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" let g:Lf_StlColorscheme = 'onedark' " 不使用popup时的状态栏主题
let g:Lf_SpacesAfterIcon=" " "调整图标后的空格数量


let g:Lf_FilerInsertMap = {
    \   '<Down>':       'down',
    \   '<Up>':         'up',
    \}

let g:Lf_HideHelp = 1
" let g:Lf_UseCache = 0
" let g:Lf_NumberOfCache = 10
" let g:Lf_MaxCount = 0
" let g:Lf_EmptyQuery = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShowRelativePath = 0
let g:Lf_DefaultMode = 'NameOnly'
" let g:Lf_PreviewResult = { 'File': 0 }
let g:Lf_AutoResize = 0
let g:Lf_UseVersionControlTool = 0
" let g:Lf_RootMarkers = ['.git', '.repo']
let g:Lf_RootMarkers = ['.repo']
let g:Lf_WorkingDirectoryMode = 'AF'

" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PopupWidth = 0.90
let g:Lf_PopupHeight = 0.3
let g:Lf_PopupPosition = [8, 0]
let g:Lf_PopupShowFoldcolumn = 0 " 不显示最左侧的一列
let g:Lf_PopupShowBorder = 1
let g:Lf_PopupBorders = ["─","│","─","│","┌","┐","┘","└"]
" let g:Lf_PopupBorders = ["━","┃","━","┃","┏","┓","┛","┗"]
let g:Lf_PopupPreviewPosition = 'bottom'
let g:Lf_PopupColorscheme = 'default'
" let g:Lf_PopupColorscheme = 'onedark'
" let g:Lf_PopupColorscheme = 'gruvbox_material'
let g:Lf_PreviewScrollStepSize = 3

" popup窗口配色
let g:Lf_PopupPalette = {
  \ 'dark': {
      \ 'Lf_hl_match': {
          \       'gui': 'NONE',
          \       'font': 'NONE',
          \       'guifg': '#ff5f00',
          \       'guibg': 'NONE',
          \       'cterm': 'NONE',
          \       'ctermfg': '202',
          \       'ctermbg': 'NONE'
          \ },
      \ 'Lf_hl_match0': {
          \       'gui': 'NONE',
          \       'font': 'NONE',
          \       'guifg': '#ff5f00',
          \       'guibg': 'NONE',
          \       'cterm': 'NONE',
          \       'ctermfg': '202',
          \       'ctermbg': 'NONE'
          \ },
      \ 'Lf_hl_popup_blank': {
          \       'gui': 'NONE',
          \       'font': 'NONE',
          \       'guifg': 'NONE',
          \       'guibg': '#4e4e4e',
          \       'cterm': 'NONE',
          \       'ctermfg': '239',
          \       'ctermbg': 'NONE'
          \ },
  \ },
\ }

      " \ 'Lf_hl_popup_window': {
      "     \       'gui': 'NONE',
      "     \       'font': 'NONE',
      "     \       'guifg': '#eeeeee',
      "     \       'guibg': '#262626',
      "     \       'cterm': 'NONE',
      "     \       'ctermfg': '255',
      "     \       'ctermbg': '235'
      "     \ },

" let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_JumpToExistingWindow = 1
let g:Lf_TabpagePosition = 3
let g:Lf_QuickSelect = 0 " 输入数字在前10个选项中选择其一

let g:Lf_WildIgnore = {
    \ 'dir': [],
    \ 'file': ['*.[!ch]*', '*.c[a-z]*', '*.h[a-z]*']
    \}

let g:Lf_RgConfig = ["-g=!*.mk", "-g=!*.cc"]

let g:Lf_CommandMap = {
            \ '<C-K>': ['<C-K>', '<Up>'],
            \ '<C-J>': ['<C-J>', '<Down>'],
            \ '<C-T>': ['<C-T>', '<C-\>']
            \ }

let g:Lf_ShortcutF = '<C-P>'

let g:Lf_PreviewResult = {
            \ 'File': 0,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 1,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 1,
            \ 'Rg': 0,
            \ 'Gtags': 1
            \}

" noremap fs :LeaderfSelf<CR>
" noremap <space>s :LeaderfSelf<CR>
" noremap fm :LeaderfMru<CR>
noremap <space>m :LeaderfMru<CR>
" noremap ff :LeaderfFunction<CR>
" noremap <space>f :LeaderfFunction<CR>
noremap <space>f :<C-U><C-R>=printf("Leaderf function --no-sort %s", "")<CR><CR>
noremap ]f :<C-U><C-R>=printf("Leaderf function --next %s", "")<CR><CR>
noremap [f :<C-U><C-R>=printf("Leaderf function --previous %s", "")<CR><CR>
" noremap ft :LeaderfBufTag<CR>
noremap <space>t :LeaderfBufTag<CR>
" noremap fb :LeaderfBuffer<CR>
noremap <space><space> :LeaderfBuffer<CR>
" noremap fl :LeaderfLine<CR>
" noremap <space>l :LeaderfLine<CR>
" noremap <space>l :<C-U><C-R>=printf("Leaderf line --no-sort %s", "")<CR><CR>
noremap <space>l :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap ]l :<C-U><C-R>=printf("Leaderf line --next %s", "")<CR><CR>
noremap [l :<C-U><C-R>=printf("Leaderf line --previous %s", "")<CR><CR>
" noremap fw :LeaderfWindow<CR>
" noremap <space>w :LeaderfWindow<CR>
noremap <space>z :LeaderfFiler<CR>
" noremap fh :LeaderfHistoryCmd<CR>
noremap <space>h :LeaderfHistoryCmd<CR>
" noremap fp :<C-U><C-R>=printf("Leaderf file --input %s", "")<CR>
noremap <space>p :<C-U><C-R>=printf("Leaderf file --input %s", "")<CR>
" noremap fg :<C-U><C-R>=printf("Leaderf rg -F %s", "")<CR>
noremap <space>g :<C-U><C-R>=printf("Leaderf rg -F %s ", expand("<cword>"))<CR>
" noremap fo :<C-U><C-R>=printf("Leaderf --recall %s", "")<CR><CR>
noremap <space>o :<C-U><C-R>=printf("Leaderf --recall %s", "")<CR><CR>
" noremap fr :<C-U><C-R>=printf("Leaderf gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <space>r :<C-U><C-R>=printf("Leaderf gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap fd :<C-U><C-R>=printf("Leaderf gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <space>d :<C-U><C-R>=printf("Leaderf gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <space>x :<C-U><C-R>=printf("Leaderf git diff HEAD^ --side-by-side --current-file %s", "")<CR><CR>
noremap <space>b :<C-U><C-R>=printf("Leaderf git blame %s", "")<CR><CR>

" 更新gtags
function! UpdateGtags()
    Leaderf gtags --remove --debug
    Leaderf gtags --update --debug
endfunction
nnoremap <space>u :call UpdateGtags()<CR>

" 在当前git代码仓中使用Leaderf rg搜索字符串
nnoremap <silent> gf :call <SID>rg_cur_gitdir()<CR>
function! s:rg_cur_gitdir()
    let gitdir = fnamemodify(finddir('.git', '.;'), ':p:h:h')
    echo "gitdir: " . gitdir
    let workdir = fnamemodify(finddir('.repo', '.;'), ':p:h:h')
    echo "workdir: " . workdir
    let globdir = substitute(gitdir, workdir, "", "")
    echo "globdir: " . globdir

    " feedkeys函数可将字符串打印到vim命令行中
    call feedkeys(printf(":Leaderf rg -F -g %s/** ", globdir), 'n')
endfunction

" 在当前git代码仓中使用Leaderf file搜索文件
nnoremap gp :call <SID>file_cur_gitdir()<CR>
function! s:file_cur_gitdir()
    let gitdir = fnamemodify(finddir('.git', '.;'), ':p:h:h')
    echo "gitdir: " . gitdir
    echo "curdir: " . getcwd()
    let relativePath = system("realpath --relative-to=" . getcwd() . " " . gitdir)
    " echo "relativepath: " . relativePath
    let relativePath = substitute(relativePath, '\n\+$', '', '') " 转换为vim支持的字符串格式
    echo "relativepath: " . relativePath

    call feedkeys(printf(":Leaderf file %s --input ", relativePath), 'n')
endfunction

" 在当前git代码仓中使用Leaderf gtags查找定义
nnoremap <Leader>d :call <SID>gtags_cur_gitdir(expand("<cword>"))<CR>
function! s:gtags_cur_gitdir(tag)
    let gitdir = fnamemodify(finddir('.git', '.;'), ':p:h:h')
    echo "gitdir: " . gitdir
    echo "curdir: " . getcwd()
    let relativePath = system("realpath --relative-to=" . getcwd() . " " . gitdir)
    " echo "relativepath: " . relativePath
    let relativePath = substitute(relativePath, '\n\+$', '', '') " 转换为vim支持的字符串格式
    echo "relativepath: " . relativePath

    call feedkeys(printf(":Leaderf gtags -d %s -S %s\n", a:tag, relativePath), 'n')
endfunction

" 在repo的指定git代码仓中使用Leaderf file搜索文件
nnoremap gv :call <SID>file_specified_gitdir("specified_dir")<CR>
function! s:file_specified_gitdir(dir)
    let repodir = fnamemodify(finddir('.repo', '.;'), ':p:h:h')
    let gitdir = repodir . "/" . a:dir
    echo "repodir: " . repodir
    echo "gitdir: " . gitdir
    echo "curdir: " . getcwd()
    let relativePath = system("realpath --relative-to=" . getcwd() . " " . gitdir)
    echo "relativepath: " . relativePath
    let relativePath = substitute(relativePath, '\n\+$', '', '') " 转换为vim支持的字符串格式
    echo "relativepath: " . relativePath

    call feedkeys(printf(":Leaderf file %s --input ", relativePath), 'n')
endfunction

" 在当前repo中使用Leaderf mru搜索最近使用的文件 (应当可以用leaderf mru --cwd代替)
nnoremap <space>m :call <SID>mru_cur_repo()<CR>
function! s:mru_cur_repo()
    let repodir = finddir('.repo', '.;')
    " echo "repodir: " . repodir
    if (len(repodir) > 0)
        let repodir = fnamemodify(repodir, ':p:h:h:t')
        " echo "repodir: " . repodir
        call feedkeys(printf(":Leaderf mru --fullPath --input '%s '\n", repodir), 'n')
    else
        call feedkeys(printf(":Leaderf mru --fullPath\n"), 'n')
    endif

endfunction

" Leaderf end

" Leaderf snippet
let g:UltiSnipsEditSplit = 'tabdo'
let g:Lf_PreviewResult = get(g:, 'Lf_PreviewResult', {})
let g:Lf_PreviewResult.snippet = 1
noremap <space>i :Leaderf snippet<CR>
inoremap <M-i> <C-O>:Leaderf snippet<CR>
