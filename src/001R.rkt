#lang morg

(require "lib/math.rkt")

(define A "A")
(define B "B")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define i "i")
(define a "a")
(define b "b")
(define b- "b'")
(define x "x")

@section[
  #:id (current-id)
  #:title @%{同一視型の基本定理}
  @paragraph{
    同一視型はすべての型に対して一様に定義されているが、個々の型については具体的な同一視のしかたが期待される。例えば、対型の要素@(math (c1 c2 . elem-of* . (A . pair-type . B)))の「自然な」同一視のしかたは@(math ((proj 1) . $ . c1))と@(math ((proj 1) . $ . c2))を同一視しかつ@(math ((proj 2) . $ . c1))と@(math ((proj 2) . $ . c2))を同一視することである。つまり、同値@(math ((c1 . id-type . c2) . equiv . ((((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2)) . pair-type . (((proj 2) . $ . c1) . id-type . ((proj 2) . $ . c2)))))を構成できると期待される(@ref["002D"])。@emph{同一視型の基本定理}(@ref["001S"])は、この手の同値を構成する手順を与える。
  }
  @paragraph{
    型@(math (A . elem-of . (universe . $ . i)))に興味があるとして、要素@(math (a . elem-of . A))に対して同一視型の族@(math ((abs x (a . id-type . x)) . elem-of . (A . fun-type . (universe . $ . i))))を特徴付けることを考える。具体的に特徴付けの候補@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を見つけたとしよう。これが正しいものなら、@(math refl)に対応する要素@(math (b . elem-of . (B . $ . a)))があるはずである。同一視型の帰納法により、@(math b)は関数@(math (b- . elem-of . (d-fun-type (x . elem-of . A) ((a . id-type . x) . fun-type . (B . $ . x)))))に拡張される。@(math ((b- . $ . x) . elem-of . ((a . id-type . x) . fun-type . (B . $ . x))))は「標準的」な比較関数であり、これが同値であることを示したい。@(math (b- . $ . x))の同値性を定義に従って示すことは難しくはないが筋が良いとも言えない。同一視型の基本定理は、すべての@(math (b- . $ . x))が同値であることと@(math (d-pair-type (x . elem-of . A) (B . $ . x)))が可縮であることが論理的に同値であると主張する。次の点から後者の方が示しやすい性質であると思われる。
    @unordered-list[
      @list-item{可縮性は様々な型の構成について閉じる(例えば@ref["001L"]や@ref["001N"])。}
      @list-item{@(math (d-pair-type (x . elem-of . A) (B . $ . x)))の可縮性は@(math a)や@(math b)や@(math b-)に依らない性質である。}
    ]
  }
  (include-part "001V.rkt")
  (include-part "001X.rkt")
  (include-part "001W.rkt")
  (include-part "001S.rkt")
  @paragraph{
    副産物として、対の同一視型の特徴付けは既に得られている。
  }
  (include-part "002B.rkt")
  @paragraph{
    @ref["001S"]を適用する際に便利な補題を用意する。
  }
  (include-part "0024.rkt")
  (include-part "0025.rkt")
  (include-part "002C.rkt")
  (include-part "002D.rkt")
]
