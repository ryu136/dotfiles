""===== 表示設定 ====={{{
syntax on "コードに色をつける
set number "行数表示
set title "編集中のファイル名の表示
set showmatch "括弧入力時に対応する括弧を示す
set wrap "行の折り返し
set scrolloff=20
""}}}

""===== 文字、カーソルの移動 ======{{{
set fenc=utf-8 "文字コードを指定
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set autoindent "自動インデント
set tabstop=4 "tabのの幅設定
set shiftwidth=2 "自動的に入力されたインデントの空白をつ2文に設定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定
"set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
"nnoremap j gj "表示上の行移動
"nnoremap k gk "表示上の行移動
""}}}

""=====検索設定====={{{
set ignorecase "大文字/小文字の区別なし
set smartcase "検索文字列に大文字が入っている場合は区別する
set wrapscan "最後まで検索したら最初の行に戻る
set incsearch ""インクリメンタルサーチ
set hlsearch "検索単語のハイライト
map <ESC><ESC> :nohlsearch<CR> " 検索結果のハイライトをEsc連打でクリアする
nnoremap [q :cprevious<CR>      "前へ
nnoremap ]q :cnext<CR>          "次へ
nnoremap [Q :<C-u>cfirst<CR>    "最初へ
nnoremap ]Q :<C-u>clast<CR>     "最後へ
""-   -   -   -   -   -   grep検索を設定する -   -   -   -   -   -   -   -   - 
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
""}}}

""=====キー入力====={{{
"入力モード時のカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

"Ctrl+jキーでESCキー
inoremap <silent> <C-e> <Esc>
""}}}

""===== エンコーディング設定 ====={{{
"if &comptable
"	set nocomptable
"endif
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
""}}}

"""====== 行と列の強調表示 ====={{{
"" 行を強調表示
"set cursorline
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"" アンダーラインを引く(gui)
"""highlight CursorLine gui=underline guifg=NONE guibg=NONE
"" 列を強調表示
"set cursorcolumn
"""}}}

"""-------------------- rainbow_parentheses -------------------------------{{{
"let g:rbpt_colorpairs = [
"    \ ['lightmagenta',  'lightmagenta'],
"    \ ['lightblue',  'lightblue'],
"    \ ['lightcyan',  'lightcyan'],
"    \ ['green',  'green'],
"    \ ['brown',  'brown'],
"    \ ['yellow',  'yellow'],
"    \ ['red',  'darkred'],
"    \ ['lightmagenta',  'lightmagenta'],
"    \ ['lightblue',  'lightblue'],
"    \ ['lightcyan',  'lightcyan'],
"    \ ['green',  'green'],
"    \ ['yellow',  'yellow'],
"    \ ['brown',  'brown'],
"    \ ['red',  'darkred'],
"    \ ['lightmagenta',  'lightmagenta'],
"    \ ['lightblue',  'lightblue'],
"    \ ['lightcyan',  'lightcyan'],
"    \ ['green',  'green'],
"    \ ['yellow',  'yellow'],
"    \ ['brown',  'brown'],
"    \ ['red',  'darkred'],
"    \ ]
"let g:rbpt_max = 21
"let g:rbpt_loadcmd_toggle = 1
""Always On:
"au VimEnter * RainbowParenthesesToggle		"Toggle it on/off
"au Syntax * RainbowParenthesesLoadRounc		"(), the default when toggling
"au Syntax * RainbowParenthesesLoadSquare	"[]
"au Syntax * RainbowParenthesesLoadBraces	"{}
"""}}}

""==============================================================================
