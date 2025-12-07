" airline
let g:airline_theme = 'dark_minimal' " minimalist dark_minimal powerlineish
let g:airline_detect_paste=0
let g:airline_symbols_ascii = 1
let g:airline_section_c_only_filename = 1
let g:airline_stl_path_style = 'short'
" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" let g:airline_section_x = '' " 禁用文件类型显示
let g:airline_section_y = '' " 禁用文件编码类型显示

" let g:airline#extensions#hunks#enabled = 0 " 禁用gitgutter的hunk显示
let g:airline#extensions#hunks#non_zero_only = 1 " 当没有更改时不显示

let g:airline#extensions#nvimlsp#enabled = 0 " 禁用nvim-lsp状态显示

let g:airline#extensions#tabline#enabled = 1 " 启用tabline显示
" let g:airline#extensions#tabline#formatter = 'unique_tail_mod'
" let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0 " 不显示buffer信息
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#show_splits = 0 " 不显示分窗信息
let g:airline#extensions#tabline#tab_nr_type = 1 " 显示tab页编号
let g:airline#extensions#tabline#tab_min_count = 0 " 最少显示tab数量
let g:airline#extensions#tabline#show_close_button = 0

" let g:airline#extensions#bufferline#enabled = 0
" let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#coc#enabled = 0

" let g:airline#extensions#tagbar#enabled = 1 " 在状态栏显示当前tag名称，包括函数名
" let g:airline#extensions#tagbar#flags = 'f'
" let g:airline#extensions#tagbar#searchmethod = 'scoped-stl'
