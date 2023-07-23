#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define H "H")
(define a "a")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。次の型は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math (is-prop . $ . A))}
      @list-item[#:id "0001"]{@(math (d-fun-type (x1 x2 . elem-of* . A) (x1 . id-type . x2)))}
      @list-item[#:id "0002"]{@(math (A . fun-type . (is-contr . $ . A)))}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]は定義からすぐである。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0002"]を示す。@(math (H . elem-of . (d-fun-type (x1 x2 . elem-of* . A) (x1 . id-type . x2))))と@(math (a . elem-of . A))を仮定する。@(math a)があるので、@(math A)が可縮であることを示すには@(math (d-fun-type (x . elem-of . A) (a . id-type . x)))の要素を構成すればよいが、@(math (abs x (H . $* . a x)))でよい。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0002"]から@anchor-ref[#:node (current-id) #:anchor "0000"]を示す。@(math (H . elem-of . (A . fun-type . (is-contr . $ . A))))と@(math (x1 x2 . elem-of* . A))を仮定する。@(math (x1 . id-type . x2))が可縮であることを示すが、@(math ((H . $ . x1) . elem-of . (is-contr . $ . A)))があるので、@ref["001L"]を適用すればよい。
    }
  ]
]
