# SICP を読むのに参考になりそうな記事

- 邦題：計算機プログラムの構造と解釈
- 英題：Structure and Interpretation of Computer Programs(**SICP**)

## 講義資料

- [愛媛大の講義：プログラミング言語 Scheme](http://aiweb.cs.ehime-u.ac.jp/~ninomiya/archive/scheme/)

## 環境構築

- [【2018年3月】macでscheme(racket)コンパイル環境を構築する](https://qiita.com/shivase/items/ce9c9335d61f2b7e2e23)

LISP 用の処理系（兼 IDE）のインストール

```sh
$ brew cask install racket
```

SICP 用の拡張パッケージのインストール

```sh
$ raco pkg install sicp
```

## Racket(DrRacket) について

- DrRacket（昔は DrScheme だった） は Scheme の処理系の一つ．
- 純粋なインタプリタ方式の処理系

## SCIP 解説

- [minghai 版：非公式PDF版SICPの全訳を公開しました](https://minghai.hatenadiary.org/entry/20140402/p1)
  - 全訳をしてくた著者の方の紹介記事
  - 訳がひどい（らしい）
- [(2015/10)真鍋 版：非公式PDF版SICP・新訳](https://takeda25.hatenablog.jp/entry/20151030/1446174031)
  - minghai 氏の訳を訂正するために書いた．
  - [GitHub repository](https://github.com/hiroshi-manabe/sicp-pdf)
- [(2015/11)SICP の翻訳についての補足と和田訳について](https://takeda25.hatenablog.jp/entry/20151109/1447026522)
  - minghai 氏は「基本的な勘違いというか，読めていない」
- [SICP Study Notes](https://github.com/sikender/sicp)
  - SICP に関する講義などがまとまってる

## LISP の方言

- Common Lisp
- Arc
- Egison
- **Scheme**
- **Racket**
- Clojure
- Hy
- Emacs

Lisp 以外にも古い方言の

- 純lisp
- Maclisp
- Interlisp
- ISLisp

Erlang の VM 上で動く

- LFE

などメジャー？なものでも 12 種類以上ある．
