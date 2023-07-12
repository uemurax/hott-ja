#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(require "001S.rkt"
         "001W.rkt"
         "001X.rkt"
         "0024.rkt"
         "0025.rkt"
         "002B.rkt"
         "002C.rkt"
         "002D.rkt"
         "001V.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{同一視型の基本定理}
    @paragraph{
      同一視型はすべての型に対して一様に定義されているが、個々の型については具体的な同一視のしかたが期待される。例えば、対型の要素@($ (("c" . _ . "1") . elem-of . ("A" . pair-type . "B")))と@($ (("c" . _ . "2") . elem-of . ("A" . pair-type . "B")))の「自然な」同一視のしかたは@($ ((proj 1) ("c" . _ . "1")))と@($ ((proj 1) ("c" . _ . "2")))を同一視しかつ@($ ((proj 2) ("c" . _ . "1")))と@($ ((proj 2) ("c" . _ . "2")))を同一視することである。つまり、同値@($ ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . equiv . ((((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2"))) . pair-type . (((proj 2) ("c" . _ . "1")) . id-type . ((proj 2) ("c" . _ . "2"))))))を構成できると期待される(@ref["002D"])。@emph{同一視型の基本定理}(@ref["001S"])は、この手の同値を構成する手順を与える。
    }
    @paragraph{
      型@($ ("A" . elem-of . @universe{i}))に興味があるとして、要素@($ ("a" . elem-of . "A"))に対して同一視型の族@($ ((abs "x" ("a" . id-type . "x")) . elem-of . ("A" . fun-type . @universe{i})))を特徴付けることを考える。具体的に特徴付けの候補@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を見つけたとしよう。これが正しいものなら、@${@refl{a}}に対応する要素@($ ("b" . elem-of . ("B" . fun-apply . "a")))があるはずである。同一視型の帰納法により、@${b}は関数@($ ("b'" . elem-of . (d-fun-type ("x" . elem-of . "A") (("a" . id-type . "x") . fun-type . ("B" . fun-apply . "x")))))に拡張される。@($ (("b'" . fun-apply . "x") . elem-of . (("a" . id-type . "x") . fun-type . ("B" . fun-apply . "x"))))は「標準的」な比較関数であり、これが同値であることを示したい。@($ ("b'" . fun-apply . "x"))の同値性を定義に従って示すことは難しくはないが筋が良いとも言えない。同一視型の基本定理は、すべての@($ ("b'" . fun-apply . "x"))が同値であることと@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))が可縮であることが論理的に同値であると主張する。次の点から後者の方が示しやすい性質であると思われる。
      @unordered-list[
        @list-item{可縮性は様々な型の構成について閉じる(例えば@ref["001L"]や@ref["001N"])。}
        @list-item{@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))の可縮性は@${a}や@${b}や@${b'}に依らない性質である。}
      ]
    }
    part:001V
    part:001X
    part:001W
    part:001S
    @paragraph{
      副産物として、対の同一視型の特徴付けは既に得られている。
    }
    part:002B
    @paragraph{
      @ref["001S"]を適用する際に便利な補題を用意する。
    }
    part:0024
    part:0025
    part:002C
    part:002D
  ])

(module+ main
  (require morg/text)
  (preview))
