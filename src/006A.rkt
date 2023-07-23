#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         morg/eq-reasoning)

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define G "G")
(define t "t")
(define s "s")
(define u "u")
(define p "p")
(define q "q")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F G . elem-of* . (functor . $* . C D)))を関手、@(math (t . elem-of . (nat-trans . $* . F G)))を自然変換とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{任意の@(math (x . elem-of . C))に対して、@(math ((t . $ . x) . elem-of . (cat:map . $* . (F . $ . x) (G . $ . x))))は同型である。}
      @list-item[#:id "0001"]{@(math t)は前圏@(math (functor-cat . $* . C D))の射として同型である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0000"]は自明である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]を示す。各@(math (x . elem-of . C))に対して、射@(math ((s . $ . x) (u . $ . x) . elem-of* . (cat:map . $* . (G . $ . x) (F . $ . x))))と同一視@(math ((p . $ . x) . elem-of . (((s . $ . x) . cat:comp-bin . (t . $ . x)) . id-type . cat:id)))と@(math ((q . $ . x) . elem-of . (((t . $ . x) . cat:comp-bin . (u . $ . x)) . id-type . cat:id)))を得る。@ref["0068"]より、@(math s)と@(math u)の自然性を確認すれば十分である。@(math (x1 x2 . elem-of* . C))を対象、@(math (f . elem-of . (cat:map . $* . x1 x2)))を射とする。@(math (((F . $ . f) . cat:comp-bin . (s . $ . x1)) . id-type . ((s . $ . x2) . cat:comp-bin . (G . $ . f))))を言うには、@ref["005G"]より@(math ((cat:comp-bin (F . $ . f) (s . $ . x1) (t . $ . x1)) . id-type . (cat:comp-bin (s . $ . x2) (G . $ . f) (t . $ . x1))))を示せば十分で、これは次のように分かる。
      @disp{
        @eq-reasoning[
          @(math (cat:comp-bin (F . $ . f) (s . $ . x1) (t . $ . x1)))
          @(math id-type/symb) @%{@(math (p . $ . x1))}
          @(math (F . $ . f))
          @(math id-type/symb) @%{@(math (id-inv (p . $ . x2)))}
          @(math (cat:comp-bin (s . $ . x2) (t . $ . x2) (F . $ . f)))
          @(math id-type/symb) @%{@(math t)の自然性}
          @(math (cat:comp-bin (s . $ . x2) (G . $ . f) (t . $ . x1)))
        ]
      }
      @(math u)の自然性も同様である。
    }
  ]
]
