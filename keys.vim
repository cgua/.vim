" vim: set noma :
"
" ====================================================================================="{{{
" Command	Normal		Visual		Operator Pending	Insert Only		Command Line 
" 命令		常规模式	可视化模式	运算符模式			插入模式		命令行模式
" map		y			y			y		 
" nmap		y				 
" vmap					y			 
" omap								y		 
" map!													y				y
" imap													y	 
" cmap																	y"}}}
"
"    VIM 按键映射基本语法"{{{
"    <模式>map <按键> <命令> |mapmode-nvo| *:map* 

"    map 命令:
"    
"        * map       : 递归解释映射.示例:map tl tr .如果tr是个映射过的命令将会对tr继续进行解释.
"        * unmap     : 取消映射
"        * noremap   : 不递归解释映射.
"        * unnoremap : 取消映射.
"        * mapclear  : 取消所有映射.
    
"    模式代号:
"
"        :  (:map ) 正常,可视,选择,操作等待
"        :n (:nmap) 普通
"        :v (:vmap) 可视,选择
"        :x (:xmap) 可视
"        :s (:smap) 选择          // 在可视模式下Ctrl+G 进入
"        :o (:omap) 操作等待
"        :l (:lmap) 插入,命令行,Lang-Arg
"        :! (:!map) 插入,命令行
"        :i (:imap) 插入
"        :c (:cmap) 命令行

"    更多帮助信息请查看 :h map"}}}

map <F1> <Esc>:sview ~/.vim/help.txt<CR>

" Ctrl + c
map <C-v> "*gP

" Ctrl + v
map <C-c> "*y

"function! OpenInBrowser()"{{{
"    let l:file =expand('%:p')
"    let l:file = substitute(l:file,'^/c/','/c:/','i')
"    let l:file = substitute(l:file,'^/d/','/d:/','i')
"    let l:file = substitute(l:file,'^/e/','/e:/','i')
"    let l:file = substitute(l:file,'^/f/','/f:/','i')
"    let l:file = "!start file://" . l:file
"    exec l:file
"endfunction
"
"nnoremap <f5> :call OpenInBrowser()<cr>"}}}


