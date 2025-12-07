" ========== 插件管理 ==========
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/vim/plugins.vim
call plug#end()

" ========== 基础设置 ==========
source ~/.config/nvim/vim/init.vim
source ~/.config/nvim/vim/settings.vim
source ~/.config/nvim/vim/keymaps.vim

" ========== 插件自定义配置 ==========
" 统一加载目录 ~/.config/nvim/vim/plugin_config/
for f in split(glob('~/.config/nvim/vim/plugin_config/*.vim'), '\n')
  execute 'source' f
endfor

" ========== 加载 Lua ==========
" 加载lua/init.lua
lua require('init')
