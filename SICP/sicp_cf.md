# SICP メモ

## Racket の使い方

Racketにはソースコードの先頭にかかれた `#lang foobar` という 1 行で，使用する言語を切り替える機能がある．

例えば，ごく普通の Racket プログラムを書きたい場合は、次のようになります。

```lisp
#lang racket
(printf "hello world\n")
```

先頭行の `#lang racket` は，初期状態として racket モジュールをインポートした状態でプログラムを解釈してくれ，というような意味になる．

Racket ではソースコードの読み込みを read や read-syntax といった関数で行っている．
そのため，`#lang` で指定された言語(モジュール)で定義されている `read` 関数によっては，Lisp とはかけ離れた見た目のプログラムも実行できる．
