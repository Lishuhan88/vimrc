
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
set cursorline		 "开启光标所在行高亮
"set cursorcolumn	 "开启光标所在列高亮
set wrap	         "超出屏幕的内容自动换行
set showcmd		 "在右下角显示当前输入的键
set wildmenu		 "开启底行模式下的补全菜单
set termguicolors	 "开启真彩
"set mouse=a		 "开启鼠标
let g:indentLine_enabled = 1	"开启代码对齐线
set scrolloff=5		 "光标移动到buffer的顶部和底部时保持5行距离

" 添加“\键”为代码折叠
set foldmethod=indent
set foldlevel=99
nnoremap , za
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
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码
"set list                 " 会把空格显示出来
set tw=0
set indentexpr=
set autochdir

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
noremap <LEADER><CR> :nohlsearch<CR>    "空格+回车键 取消搜索关键词高亮

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
map s <nop>
map S :wall<CR>
map Q :qall<CR>
map q :q<CR>
map W :source $MYVIMRC<CR>
nnoremap <leader>rc :edit ~/.vim/vimrc<CR>

"快速移动光标
noremap U K     "把U改为帮助
noremap K 5k
noremap J 5j
noremap H 7h
noremap L 7l

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


"调节分屏的大小
"map <up> :res +5<CR>
"map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"切换左右分屏还是上下分屏
map zv <C-w>t<C-w>H
map zg <C-w>t<C-w>K

"tabe标签的创建与移动
"nnoremap tn :tabe<CR>    "tabe new
"nnoremap th :-tabnext<CR>
"nnoremap tl :+tabnext<CR>
nnoremap <c-l> :bn<CR>    
nnoremap <c-h> :bp<CR>    
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>

nnoremap td :bd<CR>

"粘贴模式的选择
map zp :set paste<CR>
map zy :set nopaste<CR> 



"在可视模式下大写Y拷贝到系统剪贴板
vnoremap Y "+y
vnoremap P "+p

"代码补全的时候默认只出现在下方
map zu :set completeopt+=preview<CR>
map zn :set completeopt-=preview<CR>


" Press space twice to jump to the next '' and edit it
"map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Call figlet
map tx :r !figlet 

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

"多光标插件
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"给相同语义的单词高亮/或者添加下划线
Plug 'RRethy/vim-illuminate'

"辅助粘贴板
Plug 'junegunn/vim-peekaboo'

"增加、替换配对符的插件
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
"Plug 'crusoexia/vim-monokai'
"Plug 'sickill/vim-monokai'
"Plug 'morhetz/gruvbox'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'liuchengxu/space-vim-dark'

"c/c++额外的语义高亮插件
Plug 'octol/vim-cpp-enhanced-highlight'

"代码对齐线
Plug 'Yggdroot/indentLine'

" Error checking
Plug 'w0rp/ale'

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


" ===
" === vim配色
" ===
"Solarized8
set background=dark
let g:solarized_italics=0
colorscheme solarized8

"monokai
"syntax on
"colorscheme monokai

"gruvbox
"set background=dark
"let g:gruvbox8_italic=1
"let g:gruvbox8_italicize_comments=1
"colorscheme gruvbox8

"space-vim-dark
"colorscheme space-vim-dark
"hi LineNr ctermbg=NONE guibg=NONE

"colorscheme SpaceVim


" ===
" === 文件树插件
" ===
" Nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
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
" tagbar
let g:tagbar_width = 30
let g:tagbar_autofocus = 1                                "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_sort = 0                                         "设置标签不排序，默认排序
nnoremap <silent> <leader>t :TagbarToggle<cr>

" ===
" === echodoc.vim 在命令行显示函数提示
" ===
" echodoc.vim
let g:echodoc_enable_at_startup = 1

" ===
" === easymotion
" ===
"光标快速跳转插件
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
"新版本中默认设置为<leader><leader> 为了避免于其他插件冲突 我的<leader>j <leader>k都空着的 不冲突
map <leader>w <Plug>(easymotion-bd-w)   
nmap <leader>w <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


" ===
" === 给相同语义的单词高亮/添加下划线
" ===
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END


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
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

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

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <leader>K to show documentation in preview window.
nnoremap <silent> <leader>K :call <SID>show_documentation()<CR>

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

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
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

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
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
nnoremap tt :CocCommand explorer<CR> 
nnoremap th :CocCommand translator.popup<CR>

let g:coc_snippet_next =  '<c-n>'
let g:coc_snippet_prev =  '<c-p>'
imap <C-y> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'lsh'
