
" __  __        __     _____ __  __ ____   ____ 
"|  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| | | | |  \ \ / / | || |\/| | |_) | |    
"| |  | | |_| |   \ V /  | || |  | |  _ <| |___ 
"|_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"        |___/                                  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 用户自定义配置（该文件放一般性配置，可覆盖~/.vimrc里的配置，若要增加、卸载插件，请放入~/.vimrc.custom.plugins）

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"通用配置如下：
let mapleader = " "      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
set backspace=indent,eol,start	"设置backspace的工作方式
filetype on              " 设置开启文件类型侦测
filetype indent on
filetype plugin on       " 设置加载对应文件类型的插件
let &t_ut=''             " 有的终端配色可能会不正常，加上这玩意可能好使
set t_RS= t_SH=          " 某些终端中使用 Vim 8 内嵌终端如看到奇怪字符
set t_TI= t_TE=          " 某些终端中使用 Vim 8.2+ 会看到一些奇怪字符
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set number		 "开启行号
set relativenumber	 "开启相对行号
"set cursorline		 "开启光标所在行高亮
"set cursorcolumn	 "开启光标所在列高亮
set wrap	         "超出屏幕的内容自动换行
set showcmd		 "在右下角显示当前输入的键
set wildmenu		 "开启底行模式下的补全菜单
set termguicolors	 "开启真彩
"set mouse=a		 "开启鼠标
let g:indentLine_enabled = 1	"开启代码对齐线
set scrolloff=5		 "光标移动到buffer的顶部和底部时保持5行距离

" 添加“,键”为代码折叠
set foldmethod=indent
set foldlevel=99
nnoremap <LEADER>, za
"代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax       "设置基于语法进行代码折叠
set nofoldenable            "关闭代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
"set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码
"set list                 " 会把空格显示出来
set tw=0
set indentexpr=
set autochdir
"解决o携带注释插入下一行的问题
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
exec "nohlsearch"
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
set smartcase           " 开启只能大小写
" 空格+回车键 取消搜索关键词高亮
noremap <LEADER><CR> :nohlsearch<CR>    

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    let system = system('uname -s')
    if system == "Darwin\n"
        set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 设置字体
    else
        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 18      " 设置字体
    endif
    set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab栏
    set guicursor=n-v-c:ver5    " 设置光标为竖线
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neovim中需要设置剪贴板
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set clipboard=unnamedplus "和系统剪贴板共享
"     let g:clipboard = {
"           \   'name': 'myClipboard',
"           \   'copy': {
"           \      '+': ['tmux', 'load-buffer', '-'],
"           \      '*': ['tmux', 'load-buffer', '-'],
"           \    },
"           \   'paste': {
"           \      '+': ['tmux', 'save-buffer', '-'],
"           \      '*': ['tmux', 'save-buffer', '-'],
"           \   },
"           \   'cache_enabled': 1,
"           \ }
"
"if has('python')
"        set pyx=2
"elseif has('python3')
"        set pyx=3                                                                                                                                                                 
"     endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键位映射如下：
"设置空格为leader键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"把原有q键的宏录制功能改到\键
"\键在vim键盘布局里是未使用任何功能的(原leader键)
noremap \ q
"noremap t '
 
map s <nop>
map ' <nop>
map S :wall<CR>
map Q :qall<CR>
map q :q<CR>
map <leader>S :source $MYVIMRC<CR>
nnoremap <leader>rc :edit ~/.vim/vimrc<CR>


"快速移动光标
"把U改为帮助
noremap U K    
noremap K 5k
noremap J 5j

" 按H移动到相对行首
noremap <silent> H ^
" 按L移动到行尾
noremap <silent> L $
inoremap <c-l> <esc>A

" 快速行内移动
noremap W 3w
noremap B 3b

"缩进
nnoremap < <<
nnoremap > >>

"Ctrl + U或E将在不移动光标的情况下向上/向下移动视图端口
noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" ===
" === 在底行模式下移动光标
" ===
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>


"分屏
map zl :set splitright<CR>:vsplit<CR>
map zh :set nosplitright<CR>:vsplit<CR>
map zk :set nosplitbelow<CR>:split<CR>
map zj :set splitbelow<CR>:split<CR>

" 分屏窗口移动
nnoremap sj <c-w>j
nnoremap sk <c-w>k
nnoremap sh <c-w>h
nnoremap sl <c-w>l
nnoremap sw <c-w>w



"调节分屏的大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"切换左右分屏还是上下分屏
map zv <C-w>t<C-w>H
map zg <C-w>t<C-w>K

"tab标签的创建与移动
nnoremap tn :tabe<CR>    "tab new
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>

" ===
" === buffer的相关操作
" ===
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>

if exists("g:vim_buffer_loaded")
    finish
endif

let g:vim_buffer_loaded = 1

command! -nargs=0 PreviousBuffer :call <sid>previous_buffer()
command! -nargs=0 NextBuffer :call <sid>next_buffer()
command! -nargs=0 CloseBuffer :call <sid>close_buffer()
command! -nargs=0 BufOnly :call <sid>buf_only()

" 切换到上一个buffer
function! s:previous_buffer()
    execute ":bp"
endfunction

" 切换到下一个buffer
function! s:next_buffer()
    execute ":bn"
endfunction

" 关闭buffer
function! s:close_buffer()
    let win_count = <sid>get_window_count()
    if win_count > 1
        call <sid>close_current_window()
    else
        call <sid>close_current_buffer()
    endif
endfunction

" 关闭其余buffer
function! s:buf_only()
    let curr = <sid>get_current_buffer_number()
    let last = <sid>get_last_buffer_number()
    let n = 1

    while n <= last
        if n != curr && <sid>is_exist_buffer(n)
            call <sid>go_to_buffer(n)
            call <sid>close_buffer_by_number(n)
        endif
        let n += 1
    endwhile
endfunction

" 获得窗口总数
function! s:get_window_count()
    return winnr('$')
endfunction

" 获得当前buffer编号
function! s:get_current_buffer_number()
    return bufnr("%")
endfunction

" 获得最后一个buffer编号
function! s:get_last_buffer_number()
    return bufnr("$")
endfunction

" 判断是否存在buffer
function! s:is_exist_buffer(num)
    return buflisted(a:num)
endfunction

" 关闭当前窗口
function! s:close_current_window()
    execute ":close"
endfunction

" 关闭当前buffer
function! s:close_current_buffer()
    execute ":bd"
endfunction

" 关闭buffer
function! s:close_buffer_by_number(num)
    silent execute ":bd " . a:num
endfunction

" 切换到buffer
function! s:go_to_buffer(num)
    silent execute ":bn " . a:num
endfunction

nnoremap <c-h> :PreviousBuffer<cr>
nnoremap <c-l> :NextBuffer<cr>
nnoremap td :bd<cr>
nnoremap tD :BufOnly<cr>


"map <LEADER>fd /\(\<\w\+\>\)\_s*\1


"粘贴模式的选择
map zp :set paste<CR>
map zy :set nopaste<CR> 



"在可视模式下大写Y拷贝到系统剪贴板
vnoremap Y "+y

"代码补全的时候默认只出现在下方
map st :set completeopt+=preview<CR>
map sb :set completeopt-=preview<CR>


" Press space twice to jump to the next '' and edit it
"map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Call figlet
"map tx :r !figlet 

""光标移动
noremap [a<LEADER> 1k
noremap [s<LEADER> 2k
noremap [d<LEADER> 3k
noremap [f<LEADER> 4k
noremap [g<LEADER> 5k
noremap [h<LEADER> 6k
noremap [j<LEADER> 7k
noremap [k<LEADER> 8k
noremap [l<LEADER> 9k
noremap [a;<LEADER> 10k
noremap [aa<LEADER> 11k
noremap [as<LEADER> 12k
noremap [ad<LEADER> 13k
noremap [af<LEADER> 14k
noremap [ag<LEADER> 15k
noremap [ah<LEADER> 16k
noremap [aj<LEADER> 17k
noremap [ak<LEADER> 18k
noremap [al<LEADER> 19k
noremap [s;<LEADER> 20k
noremap [sa<LEADER> 21k
noremap [ss<LEADER> 22k
noremap [sd<LEADER> 23k
noremap [sf<LEADER> 24k
noremap [sg<LEADER> 25k
noremap [sh<LEADER> 26k
noremap [sj<LEADER> 27k
noremap [sk<LEADER> 28k
noremap [sl<LEADER> 29k
noremap [d;<LEADER> 30k
noremap [da<LEADER> 31k
noremap [ds<LEADER> 32k
noremap [dd<LEADER> 33k
noremap [df<LEADER> 34k
noremap [dg<LEADER> 35k
noremap [dh<LEADER> 36k
noremap [dj<LEADER> 37k
noremap [dk<LEADER> 38k
noremap [dl<LEADER> 39k
noremap [f;<LEADER> 40k
noremap [fa<LEADER> 41k
noremap [fs<LEADER> 42k
noremap [fd<LEADER> 43k
noremap [ff<LEADER> 44k
noremap [fg<LEADER> 45k
noremap [fh<LEADER> 46k
noremap [fj<LEADER> 47k
noremap [fk<LEADER> 48k
noremap [fl<LEADER> 49k
noremap [g;<LEADER> 50k
noremap [ga<LEADER> 51k
noremap [gs<LEADER> 52k
noremap [gd<LEADER> 53k
noremap [gf<LEADER> 54k
noremap [gg<LEADER> 55k
noremap [gh<LEADER> 56k
noremap [gj<LEADER> 57k
noremap [gk<LEADER> 58k
noremap [gl<LEADER> 59k
noremap [h;<LEADER> 60k
noremap [ha<LEADER> 61k
noremap [hs<LEADER> 62k
noremap [hd<LEADER> 63k
noremap [hf<LEADER> 64k
noremap [hg<LEADER> 65k
noremap [hh<LEADER> 66k
noremap [hj<LEADER> 67k
noremap [hk<LEADER> 68k
noremap [hl<LEADER> 69k
noremap [j;<LEADER> 70k
noremap [ja<LEADER> 71k
noremap [js<LEADER> 72k
noremap [jd<LEADER> 73k
noremap [jf<LEADER> 74k
noremap [jg<LEADER> 75k
noremap [jh<LEADER> 76k
noremap [jj<LEADER> 77k
noremap [jk<LEADER> 78k
noremap [jl<LEADER> 79k
noremap [k;<LEADER> 80k
noremap [ka<LEADER> 81k
noremap [ks<LEADER> 82k
noremap [kd<LEADER> 83k
noremap [kf<LEADER> 84k
noremap [kg<LEADER> 85k
noremap [kh<LEADER> 86k
noremap [kj<LEADER> 87k
noremap [kk<LEADER> 88k
noremap [kl<LEADER> 89k
noremap [l;<LEADER> 90k
noremap [la<LEADER> 91k
noremap [ls<LEADER> 92k
noremap [ld<LEADER> 93k
noremap [lf<LEADER> 94k
noremap [lg<LEADER> 95k
noremap [lh<LEADER> 96k
noremap [lj<LEADER> 97k
noremap [lk<LEADER> 98k
noremap [ll<LEADER> 99k


noremap 'a<LEADER> 1j
noremap 's<LEADER> 2j
noremap 'd<LEADER> 3j
noremap 'f<LEADER> 4j
noremap 'g<LEADER> 5j
noremap 'h<LEADER> 6j
noremap 'j<LEADER> 7j
noremap 'k<LEADER> 8j
noremap 'l<LEADER> 9j
noremap 'a;<LEADER> 10j
noremap 'aa<LEADER> 11j
noremap 'as<LEADER> 12j
noremap 'ad<LEADER> 13j
noremap 'af<LEADER> 14j
noremap 'ag<LEADER> 15j
noremap 'ah<LEADER> 16j
noremap 'aj<LEADER> 17j
noremap 'ak<LEADER> 18j
noremap 'al<LEADER> 19j
noremap 's;<LEADER> 20j
noremap 'sa<LEADER> 21j
noremap 'ss<LEADER> 22j
noremap 'sd<LEADER> 23j
noremap 'sf<LEADER> 24j
noremap 'sg<LEADER> 25j
noremap 'sh<LEADER> 26j
noremap 'sj<LEADER> 27j
noremap 'sk<LEADER> 28j
noremap 'sl<LEADER> 29j
noremap 'd;<LEADER> 30j
noremap 'da<LEADER> 31j
noremap 'ds<LEADER> 32j
noremap 'dd<LEADER> 33j
noremap 'df<LEADER> 34j
noremap 'dg<LEADER> 35j
noremap 'dh<LEADER> 36j
noremap 'dj<LEADER> 37j
noremap 'dk<LEADER> 38j
noremap 'dl<LEADER> 39j
noremap 'f;<LEADER> 40j
noremap 'fa<LEADER> 41j
noremap 'fs<LEADER> 42j
noremap 'fd<LEADER> 43j
noremap 'ff<LEADER> 44j
noremap 'fg<LEADER> 45j
noremap 'fh<LEADER> 46j
noremap 'fj<LEADER> 47j
noremap 'fk<LEADER> 48j
noremap 'fl<LEADER> 49j
noremap 'g;<LEADER> 50j
noremap 'ga<LEADER> 51j
noremap 'gs<LEADER> 52j
noremap 'gd<LEADER> 53j
noremap 'gf<LEADER> 54j
noremap 'gg<LEADER> 55j
noremap 'gh<LEADER> 56j
noremap 'gj<LEADER> 57j
noremap 'gk<LEADER> 58j
noremap 'gl<LEADER> 59j
noremap 'h;<LEADER> 60j
noremap 'ha<LEADER> 61j
noremap 'hs<LEADER> 62j
noremap 'hd<LEADER> 63j
noremap 'hf<LEADER> 64j
noremap 'hg<LEADER> 65j
noremap 'hh<LEADER> 66j
noremap 'hj<LEADER> 67j
noremap 'hk<LEADER> 68j
noremap 'hl<LEADER> 69j
noremap 'j;<LEADER> 70j
noremap 'ja<LEADER> 71j
noremap 'js<LEADER> 72j
noremap 'jd<LEADER> 73j
noremap 'jf<LEADER> 74j
noremap 'jg<LEADER> 75j
noremap 'jh<LEADER> 76j
noremap 'jj<LEADER> 77j
noremap 'jk<LEADER> 78j
noremap 'jl<LEADER> 79j
noremap 'k;<LEADER> 80j
noremap 'ka<LEADER> 81j
noremap 'ks<LEADER> 82j
noremap 'kd<LEADER> 83j
noremap 'kf<LEADER> 84j
noremap 'kg<LEADER> 85j
noremap 'kh<LEADER> 86j
noremap 'kj<LEADER> 87j
noremap 'kk<LEADER> 88j
noremap 'kl<LEADER> 89j
noremap 'l;<LEADER> 90j
noremap 'la<LEADER> 91j
noremap 'ls<LEADER> 92j
noremap 'ld<LEADER> 93j
noremap 'lf<LEADER> 94j
noremap 'lg<LEADER> 95j
noremap 'lh<LEADER> 96j
noremap 'lj<LEADER> 97j
noremap 'lk<LEADER> 98j
noremap 'll<LEADER> 99j




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"配色方案
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"状态栏插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"vim开始页面
Plug 'mhinz/vim-startify'

"自动补全引号、圆括号、花括号等
Plug 'jiangmiao/auto-pairs'

"文件树插件
Plug 'preservim/nerdtree'
"NerdTree显示git状态
Plug 'Xuyuanp/nerdtree-git-plugin'
"NerdTree文件类型高亮
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"撤销书插件
Plug 'mbbill/undotree/'
"显示文件类型图标
Plug 'ryanoasis/vim-devicons'

"函数列表插件
Plug 'preservim/tagbar'
" Taglist
Plug 'liuchengxu/vista.vim'

"多光标插件
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"给相同语义的单词高亮/或者添加下划线
Plug 'RRethy/vim-illuminate'

"辅助粘贴板
Plug 'junegunn/vim-peekaboo'

"增加、替换配对符的插件 cs({ change string 把括号换成大括号 ds(删除括号
Plug 'tpope/vim-surround'

"快速注释代码插件
Plug 'tpope/vim-commentary'

"if/end/endif/endfunction补全
Plug 'tpope/vim-endwise'

"光标快速跳转插件
Plug 'easymotion/vim-easymotion'

"补全函数时在命令栏显示函数签名
Plug 'Shougo/echodoc.vim'

"书签插件
Plug 'kshenoy/vim-signature'

"代码片段插件
Plug 'honza/vim-snippets'

"自动补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"配色方案
Plug 'lifepillar/vim-solarized8'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'arzg/vim-colors-xcode'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'

"c/c++额外的语义高亮插件
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"代码对齐线
Plug 'Yggdroot/indentLine'

" Error checking
"Plug 'w0rp/ale'
Plug 'dense-analysis/ale'

" 代码调试插件
"Plug 'puremourning/vimspector',{'do':'./install_gadget.py --enable-c'}

"沉浸式编写，阅读
Plug 'junegunn/goyo.vim'

call plug#end()

" ===
" === airline
" ===
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1     "开启顶部buffer功能"
 let g:airline#extensions#tabline#enabled = 1            "开启顶部buffer编号功能"
 if !exists('g:airline_symbols')
    let g:airline_symbols = {}
 endif
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
"
"
"" ===
"" === vim配色
"" ===
""Solarized8
let g:solarized_italics=0  "让中文字体不倾斜
set background=dark
"set background=light
autocmd vimenter * ++nested colorscheme solarized8


"
""monokai
"syntax on
"colorscheme monokai

""dracula
"let g:dracula_italic = 0 "禁止字体倾斜
"colorscheme dracula

""gruvbox
"autocmd vimenter * ++nested colorscheme gruvbox
"set background=dark
"let g:gruvbox8_italic=1
"let g:gruvbox8_italicize_comments=1
"colorscheme gruvbox8

""base16
"let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-default-dark

""jellybeans
"colorscheme jellybeans


"
""space-vim-dark
""colorscheme space-vim-dark
""hi LineNr ctermbg=NONE guibg=NONE
"
""colorscheme SpaceVim
"
"
" ===
" === 文件树插件
" ===
" Nerdtree
nnoremap  <silent><leader>n :NERDTreeToggle<cr>
"nnoremap  tt :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
"NerdTree显示git状态
" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
" 撤销树
nnoremap <F5> :UndotreeToggle<CR>

" ===
" === vim-tagbar
" ===
"tagbar
let g:tagbar_width = 30
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1          "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_sort = 0                                         "设置标签不排序，默认排序
nnoremap T :TagbarToggle<cr>

" ===
" === Vista.vim
" ===
"noremap <LEADER>v :Vista!!<CR>
"noremap <c-t> :silent! Vista finder coc<CR>
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista_default_executive = 'coc'
"let g:vista_fzf_preview = ['right:50%']
"let g:vista#renderer#enable_icon = 1
"let g:vista#renderer#icons = {
"\   "function": "\uf794",
"\   "variable": "\uf71b",
"\  }
" function! NearestMethodOrFunction() abort
" 	return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
"
"let g:scrollstatus_size = 15

" ===
" === echodoc.vim 在命令行显示函数提示
" ===
let g:echodoc_enable_at_startup = 1

" ===
" === easymotion
" ===
"光标快速跳转插件
"map <leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
"新版本中默认设置为<leader><leader> 为了避免于其他插件冲突 我设置s
map <leader>w <Plug>(easymotion-bd-w)   
nmap <leader>w <Plug>(easymotion-overwin-w)
map <leader>l <Plug>(easymotion-lineforward)
map <leader>h <Plug>(easymotion-linebackward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
"let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


" ===
" === 给相同语义的单词高亮/添加下划线
" ===
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END


" ===
" === 代码调试插件
" ===

" ===
" === 沉浸式编写，阅读
" ===
map <LEADER>gy :Goyo<CR>


" ===
" === 自动补全coc.nvim lsp框架
" ===
let g:coc_global_extensions = [
            \'coc-json', 
            \'coc-vimlsp',
            \'coc-snippets',
            \'coc-explorer',
            \'coc-translator']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

 "Use tab for trigger completion with characters ahead and navigate.
 "NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
 "other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 按<c-@>调出自动补全
inoremap <silent><expr> <c-@> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" 去到上一个警告
nmap <silent> gN <Plug>(coc-diagnostic-prev)
" 去到下一个警告
nmap <silent> gn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" 转到定义
nmap <silent> gd <Plug>(coc-definition)
" 转到类型定义
nmap <silent> gy <Plug>(coc-type-definition)
" 清单实施
nmap <silent> gi <Plug>(coc-implementation)
" 列出参数资料
nmap <silent> gr <Plug>(coc-references)

" 在预览窗口中显示文档
nnoremap <silent> <leader>u :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名变量
nmap <leader>rn <Plug>(coc-rename)

" 格式化选中的代码
xmap <leader>c  <Plug>(coc-format-selected)
nmap <leader>c  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd FileType typescript setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" 在可视模式下if选中函数体，ic选中类或结构体
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" <C-k> 和 <C-j> 滚动悬浮窗口
if has('nvim-0.4.0') || has('patch-8.2.0750')
  "nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  "nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  "inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  "inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  "vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  "vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap tt :CocCommand explorer<CR> 
" coc-translator
nmap ts <Plug>(coc-translator-p)

" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

let g:coc_snippet_next =  '<c-j>'
let g:coc_snippet_prev =  '<c-k>'
imap <c-y> <Plug>(coc-snippets-expand-jump)
"let g:snips_author = 'lsh'
