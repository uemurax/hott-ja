#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/set.rkt")

(define i "i")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define z "z")
(define z1 (z . _ . "1"))
(define z2 (z . _ . "2"))

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。次の型は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math (is-set . $ . A))}
      @list-item[#:id "0001"]{@(math (d-fun-type (x . elem-of . A) (is-contr . $ . (x . id-type . x))))}
      @list-item[#:id "0002"]{@(math (d-fun-type (x . elem-of . A) (d-fun-type (z . elem-of . (x . id-type . x)) (refl . id-type . z)))) (@emph{Axiom K}と呼ばれる)}
      @list-item[#:id "0003"]{@(math (d-fun-type (x1 x2 . elem-of* . A) (d-fun-type (z1 z2 . elem-of* . (x1 . id-type . x2)) (z1 . id-type . z2)))) (@emph{uniqueness of identity principle (UIP)}と呼ばれる)}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]を示す。@(math A)が集合であると仮定する。要素@(math (x . elem-of . A))に対して、@(math (x . id-type . x))は命題である。要素@(math (refl . elem-of . (x . id-type . x)))があるので、@ref["0041"]より@(math (x . id-type . x))は可縮である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0002"]は@ref["001L"]による。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0003"]において@(math z1)について帰納法を使うと@anchor-ref[#:node (current-id) #:anchor "0002"]そのものになるので@anchor-ref[#:node (current-id) #:anchor "0002"]から@anchor-ref[#:node (current-id) #:anchor "0003"]が従う。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0003"]から@anchor-ref[#:node (current-id) #:anchor "0000"]は@ref["0041"]による。
    }
  ]
]
