# .zshrc

# -----------------------------
# Lang
# -----------------------------
# 日本語を使用
export LANG=ja_JP.UTF-8


# -----------------------------
# General
# -----------------------------
# 色を使用
autoload -Uz colors ; colors
# エディタをvimに確定
export EDITOR=vim
# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF
# 自動でpushdを実行
setopt auto_pushd
# pushdから重複を削除
setopt pushd_ignore_dups
# beepを無効にする
setopt no_beep


# -----------------------------
# Prompt
# -----------------------------
# %M    ホスト名
# %m    ホスト名
# %d    カレントディレクトリ(フルパス)
# %~    カレントディレクトリ(フルパス2)
# %C    カレントディレクトリ(相対パス)
# %c    カレントディレクトリ(相対パス)
# %n    ユーザ名
# %#    ユーザ種別
# %?    直前のコマンドの戻り値
# %D    日付(yy-mm-dd)
# %W    日付(yy/mm/dd)
# %w    日付(day dd)
# %*    時間(hh:flag_mm:ss)
# %T    時間(hh:mm)
# %t    時間(hh:mm(am/pm))
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~%# "


# -----------------------------
# Completion
# -----------------------------
# 補完
autoload -Uz compinit ; compinit
# 補完の選択を楽にする
zstyle ':completion:*' menu select
# 補完候補を詰めて表示
setopt list_packed
# ディレクトリ選択時、最後の/を残す。好み。
setopt noautoremoveslash
# 補完候補一覧でファイルの種別を識別マーク表示(ls -F の記号)
setopt list_types
# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 補完候補に色つける
autoload -U colors ; colors ; zstyle ':completion:*' list-colors "${LS_COLORS}"
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# 大文字・小文字を区別しない(大文字を入力した場合は区別する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# manの補完をセクション番号別に表示させる
zstyle ':completion:*:manuals' separate-sections true
# --prefix=/usr などの = 以降でも補完
setopt magic_equal_subst


# -----------------------------
# History
# -----------------------------
# ヒストリーに重複を表示しない
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# 他のターミナルとヒストリーを共有
setopt share_history
# historyに日付を表示
alias h='fc -lt '%F %T' 1'
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# 履歴をすぐに追加する
setopt inc_append_history
# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_verify


# -----------------------------
# Alias
# -----------------------------
# グローバルエイリアス
alias -g L='| less'
alias -g H='| head'
alias -g G='| grep'
alias -g GI='| grep -ri'
# some more ls aliases
alias ll='ls -lF'
alias lla='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# エイリアス
alias so='source'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias c='cdr'
# historyに日付を表示
alias h='fc -lt '%f %t' 1'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'
# My alias
alias todo='vim ~/Desktop/todo/todo.md'


# -----------------------------
# My Function
# -----------------------------
function memo() {
    cd ~/Memo
    filename=`date "+%Y%m%d-Memo.md"`
    if [ ! -f $filename ];then
      date "+# %Y%m%d-Memo" > $filename
    fi
    vim $filename
}

function backcp() {
    cp -p $1 backup_$1.`date "+%Y%m%d_%H%M%S"`
}

#read_bookディレクトリに新しいファイルを作成する
function readbook() {
    cd ~/Documents/read_book
    filename=`date "+%Y.md"`
    if [ ! -f $filename ];then
      date "+# 読み終えた本-%Y" > $filename
    fi
    vim $filename
}

# mkdirとcdを同時実行
function mkcd() {
  if [[ -d $1 ]]; then
    echo "$1 already exists!"
    cd $1
  else
    mkdir -p $1 && cd $1
  fi
}


# timeコマンド 表記変更
TIMEFMT=$'\n\n========================\nProgram : %J\nCPU     : %P\nuser    : %*Us\nsystem  : %*Ss\ntotal   : %*Es\n========================\n'
