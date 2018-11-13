set shell=/bin/zsh

" Vundle Setting
set nocompatible              " be iMproved, required
filetype off                  " required

" 啟用vundle来管理vim plugin
" Windows 沒有'~' 改使用'$HOME'
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non github repos
Plugin 'git://git.wincent.com/command-t.git'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'suan/vim-instant-markdown'

" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 : PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助

" vundle的配置到此结束，下面是你自己的配置


" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

"neocomplache config
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc = 1


"other config
set mouse=a
set nu! " 顯示行號
syntax on " 代码高亮
set ts=2 " 設置tab键为2個空格
set tabstop=2
let mapleader = ","  
let g:mapleader = ","  
map Y "+y  
map P "+p  ""

"easymotion
let g:EasyMotion_leader_key = '<Leader>'

"powerline config
set laststatus=2
set t_Co=256   
set encoding=utf-8  
set fillchars+=stl:\ ,stlnc:\

" markdown setting
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:instant_markdown_slow = 1
