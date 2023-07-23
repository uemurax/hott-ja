#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define a "a")
(define B "B")
(define b "b")
(define x "x")
(define y "y")
(define p "p")

@theorem[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "どういつしがたのきほんていり"]{同一視型の基本定理}
  ]
  #:title @%{同一視型の基本定理}
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a . elem-of . A))を要素、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (b . elem-of .  (B . $ . a)))を要素とする。次の型は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math (d-fun-type (x . elem-of . A) (is-equiv . $ . (abs (p . elem-of . (a . id-type . x)) (transport . $* . B p b)))))}
      @list-item[#:id "0001"]{@(math (d-fun-type (x . elem-of . A) ((a . id-type . x) . equiv . (B . $ . x))))}
      @list-item[#:id "0002"]{@(math (d-fun-type (x . elem-of . A) (retract . $* . (B . $ . x) (a . id-type . x))))}
      @list-item[#:id "0003"]{@(math (is-contr . $ . (d-pair-type (x . elem-of . A) (B . $ . x))))}
    ]
  }
  #:proof @proof[
    @paragraph{
      @(math (abs (p . elem-of . (a . id-type . x)) (transport . $* . B p b)))の型が@(math ((a . id-type . x) . fun-type . (B . $ . x)))であることから、@anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]は@(math equiv/symb)の定義から自明である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0002"]は@ref["001V"]による。
    }
    @paragraph{
    @anchor-ref[#:node (current-id) #:anchor "0002"]から@anchor-ref[#:node (current-id) #:anchor "0003"]を示す。@anchor-ref[#:node (current-id) #:anchor "0002"]を仮定すると、@ref["001W"]から@(math (retract . $* . (d-pair-type (x . elem-of . A) (B . $ . x)) (d-pair-type (x . elem-of . A) (a . id-type . x))))の要素を得る。すると、@ref["001N"]と@ref["001K"]より@(math (d-pair-type (x . elem-of . A) (B . $ . x)))は可縮である。
    }
    @paragraph{
      最後に@anchor-ref[#:node (current-id) #:anchor "0003"]から@anchor-ref[#:node (current-id) #:anchor "0000"]を示す。@anchor-ref[#:node (current-id) #:anchor "0003"]を仮定し、@(math (x . elem-of . A))と@(math (y . elem-of . (B . $ . x)))を仮定する。@(math (fiber . $* . (abs p (transport . $* . B p b)) y))が可縮であることを示す。@(math fiber)の定義より、@(math (d-pair-type (p . elem-of . (a . id-type . x)) ((transport . $* . B p b) . id-type . y)))が可縮であることを示せばよい。@ref["001X"]と@ref["001K"]から、@(math ((pair . $* . a b) . id-type . (pair . $* . x y)))が可縮であることを示せばよいが、これは仮定と@ref["001L"]から従う。
    }
  ]
]
