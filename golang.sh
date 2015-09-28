#!/usr/bin/zsh

## Go Repl
go get github.com/motemen/gore

# 入力補完
go get github.com/nsf/gocode
# プリティプリント
go get github.com/k0kubun/pp
# ドキュメント
# go get golang.org/x/tools/cmd/godoc

case ${OSTYPE} {
    linux*)
        go get 'github.com/motemen/ghq'
     ;;
    darwin*)
        echo 'brew tap motemen/ghq'
        echo 'brew instal ghq'
  ;;
}
