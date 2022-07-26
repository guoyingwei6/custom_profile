set encoding=utf8
set hlsearch    "高亮度反白
set nu          "显示行号
set bg=dark     "不同底色色调
syntax on       "语法检验


"inoremap ( ()<LEFT>
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
set showmatch     "显示匹配的括号
set smartindent
set autoindent
"set mouse=a       "允许光标点击
set tabstop=4      "(注：ts是tabstop的缩写，设TAB宽4个空格)
set expandtab      "设置tab用空格表示
set shiftwidth=4   "缩进长度
set noswapfile     "不备份文件
set softtabstop=4  "退格键长度
set pastetoggle=<F9> "切换自动缩进
map <F10> :set paste<CR>
map <F11> :set nopaste<CR>

"为python脚本添加shebang，通过F6调用
function AddPythonShebang()
    call setline(1,"#!/usr/bin/env python3")
    call append(1,"# -*- coding: utf-8 -*-")
    call append(2,"#Author: Guo Yingwei")
    call append(3,"#Date: " . strftime("%Y-%m-%d %R:%S"))
    call append(4,"#E-mail: yingwei.guo@foxmail.com")
    call append(5,"#Description: ")
endf
map <F6> : call AddPythonShebang() <cr>

"添加monokai主题
"syntax enable
"set background=dark
":colorscheme molokai
