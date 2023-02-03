# ノード

ノード毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。 `<id>` は `0000` から `FFFF` までで、*被りがあってはならない*。

## セクション

セクション毎にファイルを作り、 `subfile` で読み込む。ファイル名は `src/node-<id>-<name>.tex` とする。セクションの始まりには `\mySection{<id>}{<title>}` を使う。サブセクションは `myShiftSections` 環境内で `subfile` で読み込む。

# プリアンブル

ファイル名 `src/my-<name>.sty` でファイルを作り、 `src/my-preamble.sty` から `\usepackage{my-<name>}` で読み込む。
