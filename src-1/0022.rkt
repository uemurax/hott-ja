#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:0022)

(define part:0022
  @section[
    #:id "0022"
    #:title @%{構造同一原理}
    @paragraph{
      一価性(と関数外延性)の帰結として、@emph{構造同一原理(structure identity principle)}をいくつか例示する。構造とは厳密に定義はしないが、なんらかの数学的構造を表すレコード型のこととする。構造同一原理は、構造の同一視型は構造を保つ同値の型と同値であることを主張する。
    }
    @paragraph{
      ある構造@${A}と要素@($ ("a" . elem-of . "A"))に対し、同一視型@($ (abs "x" ("a" . id-type . "x")))を特徴付けるには、候補@($ ("E" . elem-of . ("A" . fun-type . @universe{i})))を見つけて@($ (d-pair-type ("x" . elem-of . "A") ("E" . fun-apply . "x")))が可縮であることを示す。要素@($ ("e" . elem-of . ("E" . fun-apply . "a")))を自然に見つけられる場合がほとんどで、@ref["001S"]から@($ (("a" . id-type . "x") . equiv . ("E" . fun-apply . "x")))を得る。基本的な戦略は目的の型から始めて、既に可縮と分かっている型になるまでレトラクトの列を作ることである(実際には同値の列を作れる場合が多い)。すると@ref["001K"]により目的の型が可縮であることが従う。レトラクトの列を作る際には@ref["0025"]が便利で、大きなレコード型の一部に同一視型の特徴付けを知っている部分があれば、そのレコード型はより単純な型のレトラクトであることを示せる。また、レコード型の要素を並び換える関数はレトラクションであることも便利である。
    }
    ;part:0023
    ;part:0028
    ;part:002A
    @paragraph{
      数学でよく登場する構造といえば群や環などであるが、これらについての構造同一原理を正しく述べるには@ref["003W"]で導入する@emph{@${n}型}の概念を用いる。@ref["004V"]でさらなる構造同一原理を見る。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0022)))
