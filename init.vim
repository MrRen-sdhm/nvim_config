" ========== 插件管理 ==========
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/vim/plugins.vim
call plug#end()

" ========== 加载 Lua ==========
" 加载lua/init.lua -- 目前主要用于配置主题
lua require('init')

" ========== 基础设置 ==========
source ~/.config/nvim/vim/init.vim
source ~/.config/nvim/vim/settings.vim
source ~/.config/nvim/vim/keymaps.vim

" ========== 插件自定义配置 ==========
" 统一加载目录 ~/.config/nvim/vim/plugin_config/
for f in split(glob('~/.config/nvim/vim/plugin_config/*.vim'), '\n')
  execute 'source' f
endfor

source ~/.config/nvim/vim/post_init.vim
