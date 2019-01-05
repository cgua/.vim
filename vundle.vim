" vim: se noma :
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" 将Vundle目录添加进rtp
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" ============= My Plugins ===============================================

" 终端配色方案
Plugin 'https://github.com/nanotech/jellybeans.vim.git'
" 由于此时vundle还未初始化完成，找不到主题．只能放到文件末尾


" 主题 solarized
Bundle 'altercation/vim-colors-solarized.git'

" 选择对齐
" https://github.com/junegunn/vim-easy-align
Bundle 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" 缩进显示
" https://github.com/nathanaelkane/vim-indent-guides'
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup =1
if !has('gui_running')
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=0 ctermbg=232
endif

" 多光标
" https://github.com/terryma/vim-multiple-cursors
"Bundle 'terryma/vim-multiple-cursors'
"let g:multi_cursor_use_default_mapping =1
"  let g:multi_cursor_next_key='<c-n>'
"  let g:multi_cursor_prev_key='<C-p>'
"  let g:multi_cursor_skip_key='<C-x>'
"  let g:multi_cursor_quit_key='<esc>'


" powerline
Plugin 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2

" 状态栏增强
"Bundle 'vim-airline/vim-airline'
"   This is disabled by default; add the following to your vimrc to enable the extension:
"let g:airline#extensions#tabline#enabled =1
"   Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" 搜索增强
"Bundle 'ctrlpvim/ctrlp.vim'
" Change the default mapping and the default command to invoke CtrlP:
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'


" 括号配色
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['brown',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" 主题
Bundle 'sickill/vim-monokai'

" ============= My Plugins ===============================================
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if has("gui_running")
	set background=dark
	colorscheme solarized           " 设置主题
else
	set background=dark             " 背景为黑
	let g:solarized_termtrans  =1   " 让solarized使用终端背景色 !!注:需要放在colorscheme solarized之前
"	let g:solarized_termcolors =256 " 让solarized在终端使用256色配色方案
"    colorscheme jellybeans          " 使用jellybeans主题
	colorscheme solarized           " 设置主题
"	colorscheme monokai
endif
