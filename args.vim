" vim: set noma : 编辑本文件请输入 :se ma
" 本配置文件主要用于处理vim自带的参数值的设置
" 如果终端和图形界面分开进行配置的方面需放于本配置底部
" 配置文件按字母序排列,开关类设置排序时不应与开头的no-前缀进行排序


source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" - - - - - - - - - - - - - A -- G - - - - - - - - - - - - - - - - - - - - - -

set autochdir "自动切换到当前工作目录
set autoindent "启用自动缩进

set backspace=indent,eol,start "启用删除键

"set cursorcolumn "高亮光标列
set cursorcolumn "term=bold,cterm=bold,ctermfg=2,gui=bold,guibg=bg "光标列设置
set cursorline "term=bold,cterm=bold,ctermfg=2,gui=bold,guibg=bg "光标行设置
set cmdheight=1 " 命令行高度
set nocompatible " 去掉vi一致性模式

set noexpandtab "缩进使用空格代替
set encoding=utf-8 " vim内部编码
"set errorbells  " 错误时发出＂咚＂的一声

"fdm 折叠方式
"manual   手工定义折叠
"indent   更多的缩进表示更高级别的折叠
"expr     用表达式来定义折叠
"syntax   用语法高亮来定义折叠
"diff     对没有更改的文本进行折叠
"marker   对文中的标志折叠
set fdm=marker
set fileencoding=utf-8 " 文件保存编码
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,cp939,big5 " 文件编码猜测顺序
set fileformat=unix "使用LF代替CRLF

" - - - - - - - - - - - - - H -- M - - - - - - - - - - - - - - - - - - - - - -


set helplang=cn "帮助文档语言设置为中文
set hlsearch "高亮搜索
set history=256 "历史记录条数
"set list "设置tab显示方式及尾部标点等
"set listchars =tab:->
set number " 显示行号

" - - - - - - - - - - - - - O -- T - - - - - - - - - - - - - - - - - - - - - -

set rnu "显示相对行号
set ruler "状态栏显示行号

set shiftwidth=4 "缩进宽度
set shortmess=atl "不显示帮助乌干达儿童
set showcmd " 显示未完成命令
set showmode "状态栏显示模式
set smartcase "查找时如果不包含大写字母则忽略大小写，否则匹配大小写
set smartindent "智能缩进
set softtabstop=4 "使用空格代替tab
syn on "语法高亮
set noswapfile "不使用.swp文件

"set t_ti= t_te= "设置退出vim后，将缓冲区输入终端的回显
"set t_Co =256 "设置终端为256色
set tabstop=4 "tab宽度
set termencoding=utf-8 " 终端编码

" - - - - - - - - - - - - - U -- Z - - - - - - - - - - - - - - - - - - - - - -


set novisualbell " 不要闪烁
set nowrap " 关闭自动换行



" - - - - - - - - - - - - - 条件设置区域 - - - - - - - - - - - - - - - - - - - - - -

if version >=603
	set helplang=cn
endif

" - - - - - - - - - - - - - 其它设置区域 - - - - - - - - - - - - - - - - - - - - - -

" 由于formatoptions 的设置会被后面加载的文件格式化配置所覆盖
" 所以只能放到文件格式化配置里
autocmd FileType * setlocal formatoptions-=cr "textwidth=80

if has("gui_running")
	set guifont=Consolas:h12
	set langmenu=zh_CN.UTF-8 "设置菜单语言
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
"else
"		colorscheme jellybeans " 使用jellybeans主题
endif
