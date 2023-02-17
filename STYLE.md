# ノード

ノード毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。 `<id>` は `0000` から `ZZZZ` までで、*被りがあってはならない*。

## セクション

セクション毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>-<name>.tex` とする。セクションの始まりには `\mySection{<id>}{<title>}` を使う。サブセクションは `myShiftSections` 環境内で `subfile` で読み込む。 `mySubsections` 環境を代わりに使うと HTML 版でサブセクションの目次を表示する。

## ブロック

ブロック毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。ブロックの記述には `myBlock` 環境を使う。使い方は `\begin{myBlock}{<id>}{<environment>}[<title>]`。

## 一番上のファイル

本文の一番上のファイルは `src/main.tex` で、ここではチャプターを `subfile` で読み込むことしかしない。

# コマンド、環境

文書全体を通して一貫しているべきものには専用のコマンドや環境を用意する。

# 数式

簡単なインライン数式には `\myInlineMath{<math>}` を使う。これは `<math>` を展開してから `\(...\)` で囲うことと同値で、 html 版で数式の `alt` 属性をプリミティヴな TeX コードにするためである。

# プリアンブル

ファイル名 `src/my-<name>.sty` でファイルを作り、 `src/my-preamble.sty` から `\usepackage{my-<name>}` で読み込む。

# 参考文献

`src/my-references.bib` に文献情報を置き、 `\myCiteParen`, `\myCiteText`, `\myCiteAuthor` で参照する。これらのマクロはそれぞれ `biblatex` パッケージの `\parencite`, `\textcite`, `\citeauthor` と同等。

# 用語

新しい用語を導入する際は `\myNewTerm[<読み>]{<語>}` を使う。内部で `<語>` を索引に登録するので `\index` は使わない。

## 訳語

できるだけ用語は日本語に訳す。導入の際に英語名を併記する。

# 相互参照

`\myRef`, `\myRefLabel` を使う。それぞれ `cleveref` パッケージの `\cref`, `\labelcref` と同等。ノードの参照には `\myRef{<id>}` を使う。その他の参照に使うラベルは衝突が無ければ特に制約は無い。

# 外部リンク

`\myHRef{<url>}{<text>}` を使う。 HTML版では普通のリンクになり、 PDF版では脚注に URL を表示する。

# 名前

## コマンド、環境

前置詞 `my` をつける。

## 定数

定数にはそれぞれ専用のコマンドを用意する。

## (メタ)変数

ブロック内で衝突が無ければ特に制約は無い。慣習としては英アルファベット1文字を変数名に使う。型には `A`, `B`, `X`, `Y` 等をよく使い、要素には `a`, `b`, `x`, `y` 等をよく使う。

# その他

## テーブル

ブロックがテーブル環境を含む場合、 `\StartDefiningTabulars` と `\StopDefiningTabulars` で囲う必要があるみたい。 lwarp のマニュアルを参照。
