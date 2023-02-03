# 名前 #

## ノード ##

ノード毎にファイルを作り、ファイル名は `src/node-<id>.tex` または `src/node-<id>-<name>.tex` とする。各ノードはセクションまたは定理環境からなる。セクション名には `\mySectionName{<id>}{<name>}` を使う。ラベルには `\label{<id>}` を使う。

## プリアンブル ##

ファイル名 `my-<name>.sty` でファイルを作り、 `my-preamble.sty` から読み込む。
