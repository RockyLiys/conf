set runtimepath+=~/.vim_runtime
set nu
set background=dark
set cursorline "突出显示当前行
set autoindent "自动对齐
set mouse=a  "允许鼠标
set shiftwidth=4
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

call plug#begin('~/.vim/plugged')
" ack
Plug 'mileszs/ack.vim'
" python
Plug 'klen/python-mode'
Plug 'miyakogi/vim-virtualenv'
" js
Plug 'pangloss/vim-javascript'
" Css
Plug 'bubujka/emmet-vim'
" 代码片段补全
Plug 'honza/vim-snippets'
" 支持各种流行编程语言的语法检测
Plug 'scrooloose/syntastic'
" 支持大纲浏览
Plug 'majutsushi/tagbar'
"git支持，直接在vim中执行git命令。一个特别方便的命令就是:Gblame，可以看到每一行代码是谁在啥时候提交的
Plug 'tommcdo/vim-fugitive-blame-ext'
" 快速注释，支持几乎所有编程语言
Plug 'ddollar/nerdcommenter'
" ctrlp
Plug 'kien/ctrlp.vim'
" syntastic
Plug 'jshint/jshint'
" auto youcompleteme   支持c/c++/python/go等流行编程语言的代码补全
Plug 'valloric/youcompleteme'
Plug 'docunext/closetag.vim'
" nerdtree git plug
Plug 'Xuyuanp/nerdtree-git-plugin'
" 底下的文件信息提示行,彩虹效果
Plug 'bling/vim-airline'
" 缩进线条，可以set cursorline加上水平线条，python里这个还是很必要的
Plug 'yggdroot/indentline'
" 启动的时候显示一些编程相关的名言警句和最近打开文件,很有意思
Plug 'mhinz/vim-startify'
" C/C++ IDE
Plug 'vim-scripts/c.vim'
" vim-terminal
Plug 'mattn/vim-terminal'

call plug#end()

" youcompleteme
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_auto_trigger = 1 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_autoclose_preview_window_after_insertion = 1 
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F4> :YcmDiags<CR>                                                                                                                                                                                                                            
inoremap <c-o> <c-x><c-o>
let g:ycm_semantic_triggers = { 
            \     'c' : ['->', '  ', '.', ' ', '(', '[', '&'],
            \     'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
            \     'perl' : ['->', '::', ' '],
            \     'php' : ['->', '::', '.'],
            \     'cs,java,javascript,d,vim<Plug>PeepOpenython<Plug>PeepOpenerl6,scala,vb,elixir,go' : ['.'],
            \     'ruby' : ['.', '::'],
            \     'lua' : ['.', ':']
            \ }

"python-mode
"开启警告
let g:pymode_warnings = 0
"保存文件时自动删除无用空格
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
"显示允许的最大长度的列
let g:pymode_options_colorcolumn = 0
"设置QuickFix窗口的最大，最小高度
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 10
"使用python3
let g:pymode_python = 'python3'
"使用PEP8风格的缩进
let g:pymode_indent = 1
"取消代码折叠
let g:pymode_folding = 0
"开启python-mode定义的移动方式
let g:pymode_motion = 1
"启用python-mode内置的python文档，使用K进行查找
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
"自动检测并启用virtualenv
let g:pymode_virtualenv = 1
"不使用python-mode运行python代码
let g:pymode_run = 0
"let g:pymode_run_bind = '<Leader>r'
"不使用python-mode设置断点
let g:pymode_breakpoint = 0
"let g:pymode_breakpoint_bind = '<leader>b'
"启用python语法检查
let g:pymode_lint = 1
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"编辑时进行检查
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"发现错误时不自动打开QuickFix窗口
let g:pymode_lint_cwindow = 0
"侧边栏不显示python-mode相关的标志
let g:pymode_lint_signs = 0
"let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
"启用重构
let g:pymode_rope = 1
"不在父目录下查找.ropeproject，能提升响应速度
let g:pymode_rope_lookup_project = 0
"光标下单词查阅文档
let g:pymode_rope_show_doc_bind = '<C-c>d'
"项目修改后重新生成缓存
let g:pymode_rope_regenerate_on_write = 1
"开启补全，并设置<C-Tab>为默认快捷键
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Tab>'
"<C-c>g跳转到定义处，同时新建竖直窗口打开
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'vnew'
"重命名光标下的函数，方法，变量及类名
let g:pymode_rope_rename_bind = '<C-c>rr'
"重命名光标下的模块或包
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"高亮缩进错误
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
ret g:pymode_syntax_space_errors = g:pymode_syntax_all
