#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/proposition.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define G "G")
(define t "t")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しぜんへんかん"]{自然変換}
    @index[#:key "しぜんせい"]{自然性}
    @notation-index[#:key "NatTrans"]{@(math nat-trans)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F G . elem-of* . (functor . $* . C D)))を関手とする。型@(math ((nat-trans . $* . F G) . elem-of . (universe . $ . i)))を
    @disp{
      @(math (prop-compr (t . elem-of . (d-fun-type (x . elem-of . C) (cat:map . $* . (F . $ . x) (G . $ . x)))) (forall (x1 x2 . elem-of* . C) (forall (f . elem-of . (cat:map . $* . x1 x2)) (((G . $ . f) . cat:comp-bin . (t . $ . x1)) . id-type . ((t . $ . x2) . cat:comp-bin . (F . $ . f)))))))
    }
    と定義する。@(math (nat-trans . $* . F G))の要素を@(math F)から@(math G)への@dfn{自然変換(natural transformation)}と呼ぶ。自然変換@(math (t . elem-of . (nat-trans . $* . F G)))が満たすべき性質(@(math (forall (x1 x2 . elem-of* . C) (forall (f . elem-of . (cat:map . $* . x1 x2)) (((G . $ . f) . cat:comp-bin . (t . $ . x1)) . id-type . ((t . $ . x2) . cat:comp-bin . (F . $ . f)))))))を@(math t)の@dfn{自然性(naturality)}と言う。
  }
]
