# ノード

ノード毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。 `<id>` は `0000` から `FFFF` までで、*被りがあってはならない*。

## セクション

セクション毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>-<name>.tex` とする。セクションの始まりには `\mySection{<id>}{<title>}` を使う。サブセクションは `myShiftSections` 環境内で `subfile` で読み込む。

## ブロック

ブロック毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。ブロックの記述には `myBlock` 環境を使う。使い方は `\begin{myBlock}{<id>}{<environment>}[<title>]`。

# 数式

簡単なインライン数式には `\myInlineMath{<math>}` を使う。これは `<math>` を展開してから `\(...\)` で囲うことと同値で、 html 版で数式の `alt` 属性をプリミティヴな TeX コードにするためである。

# プリアンブル

ファイル名 `src/my-<name>.sty` でファイルを作り、 `src/my-preamble.sty` から `\usepackage{my-<name>}` で読み込む。

# 名前

## マクロ名

前置詞 `my` をつける。

## 定数

定数にはそれぞれ専用のマクロを用意する。

## (メタ)変数名

ブロック内で衝突が無ければ特に制約は無い。慣習としては英アルファベット1文字を変数名に使う。型には `A`, `B`, `X`, `Y` 等をよく使い、要素には `a`, `b`, `x`, `y` 等をよく使う。
