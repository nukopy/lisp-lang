# LISP の基礎知識

## LISP の主要な方言

方言とは，LISP から派生してできた言語のこと．自然言語の方言と同様に，**基本的な文法や機能を共通しながら細かい振る舞いに差違の見られる類縁言語のこと**を指す．

- Common Lisp
- Schema
- Emacs Lisp

## LISP の方言一覧

- Arc
- AutoLISP
- Clojure
- Common Lisp
- Egison
- Emacs Lisp
- EuLisp
- Franz Lisp
- Hy
- Interlisp
- ISLISP
- Le Lisp
- LFE
- Maclisp
- MDL
- newLISP
- NIL
- PicoLisp
- Portable Standard Lisp
- Racket
- Scheme
- SKILL
- Spice Lisp
- T
- XLISP
- Lisp Machine Lisp

---

## Common Lisp の処理系

- 参考
  - [モダン Common Lisp: Common Lisp 処理系のインストール(2011)](http://dev.ariel-networks.com/wp/archives/354)
  - [2020 年の Common Lisp の処理系はこれだ!](https://zenn.dev/g000001/articles/e4eb6ab1c9040f03eafa)

Common Lisp の代表的な処理系を示す．

- Common Lisp の代表的な処理系
  - **SBCL**（Stell Blank Commmon Lisp）
    - **おすすめ**．2015 年頃から安定してる．SBCL 以外の処理系の開発の勢いが弱くなっているようなところもあるため，さらにシェアを伸ばしているのかも．
  - CLISP
    - Lisp 入門者におすすめ．ここ 6 年位開発が滞っている．
  - Clozure CL（CCL）
    - ネイティブコンパイラで速度も高速．コンパイル速度は SBCL よりずっと速いのが特徴．
  - Allegro CL
    - 商用の Common Lisp ネイティブコンパイラ．速度も高速で周辺ライブラリや処理系の機能が充実している．
  - LispWorks
    - 有償のネイティブコンパイラ．速度も高速で周辺ライブラリや処理系の機能が充実している．
  - ECL
  - CMUCL
  - GCL（おすすめしない）
  - ABCL
    - JVM 上の Common Lisp 実装．Java のコードが呼び出せたりする．
  - Clasp（まだまだこれから！）
    - C++ との連携，LLVM の利用，等で注目される処理系．

## Common Lisp の処理系事情解説

Common Lisp のインストール方法を調べると，「〜の処理系は〜に特徴があり...」とでてきて混乱するかもしれない．

Common Lisp は，Python などと違い，1 つの公式の実装が存在するわけではない．ANSI で規定された規格があるため，規格で定められた機能を実装したものは全て Common Lisp を名乗ることができる．そのため，Common Lisp といっても，複数の実装がありうる．

ただ，規格があるとはいえ，スレッドや OS とのやりとりなど規格で規定されていないものは処理系の独自拡張を利用することになる（処理系を跨いで可搬に書けるライブラリはもちろんある）．

著名な処理系として，処理が速いオープンソースの処理系 Steel Bank Common Lisp（SBCL）や，mac のサポートが手厚いオープンソースの処理系 Clozure Common Lisp（CCL），GNU が保守する GNU CLISP（最近開発があまりアクティブでない），商用処理系でとても速いと噂の Allegro Common Lisp などがある．

SBCL がおすすめ．

## Roswell：Common Lisp 処理系マネージャ

- [いまから始める Common Lisp(2018)](https://qiita.com/t-sin/items/054c2ff315ec3b9d3bdc)

Roswell は Common Lisp 処理系マネージャである．Python や Ruby でいう pyenv，rbenv である．

## Roswell の使い方

### Roswell のインストール

- Roswell のインストール

```sh
brew install roswell
```

Roswell は，それ自身コア以外の部分に Common Lisp 処理系を必要とする．以下のコマンドを叩くことで，Common Lisp 処理系を取得し，Roswell の設定の初期化やパッケージマネージャ （quicklisp）のインストールが行われ，完全に機能するようになる．

- Roswell の初期セットアップ

```sh
ros setup
```

なお，普通に `ros` コマンドを実行しても，処理系が足りていなければ自動でセットアップを行ってくれる．

### 処理系のインストール

- インストール可能な処理系一覧

```sh
Candidates impls for installation are:
# abcl-bin
# allegro
# ccl-bin
# clasp
# clisp
# cmu-bin
# ecl
# mkcl
# sbcl-bin     デフォルトでインストールされている SBCL
# sbcl         最新バージョンの SBCL
# sbcl-source
```

- 特定の処理系のインストール可能なバージョン一覧

```sh
$ ros list versions [lang-processor-name]
$ ros list versions sbcl
# Installable versions for sbcl:
# Checking version to install....
# 2.1.2
# 2.1.1
# 2.1.0
# 2.0.11
# 2.0.10
# 2.0.9
# 2.0.8
# 2.0.7
# 2.0.6
# 2.0.5
```
