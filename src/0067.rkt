#lang morg

(require "lib/markup/exercise.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define F1 (F . _ . "1"))
(define F2 (F . _ . "2"))
(define F3 (F . _ . "3"))
(define t "t")
(define t1 (t . _ . "1"))
(define t2 (t . _ . "2"))
(define x "x")

@exercise[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "こうとうしぜんへんかん"]{恒等自然変換}
    @index[#:key "ごうせいしぜんへんかん"]{合成自然変換}
    @notation-index[#:key "id"]{@(math id-nat-trans) (自然変換)}
    @notation-index[#:key "tos"]{@(math (t2 . nat-trans-comp . t1)) (自然変換)}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏とする。
    @ordered-list[
      @list-item{関手@(math (F . elem-of . (functor . $* . C D)))に対して、@dfn{恒等自然変換}@(math ((id-nat-trans . $i . F) . elem-of . (nat-trans . $* . F F)))を@(math (abs x (cat:id . $i . (F . $ . x))))と定義する。@(math (id-nat-trans . $i . F))の自然性を確認せよ。}
      @list-item{関手@(math (F1 F2 F3 . elem-of* . (functor . $* . C D)))と自然変換@(math (t1 . elem-of . (nat-trans . $* . F1 F2)))と@(math (t2 . elem-of . (nat-trans . $* . F2 F3)))に対して、@dfn{合成}@(math ((t2 . nat-trans-comp . t1) . elem-of . (nat-trans . $* . F1 F3)))を@(math (abs x ((t2 . $ . x) . cat:comp-bin . (t1 . $ . x))))と定義する。@(math (t2 . nat-trans-comp . t1))の自然性を確認せよ。}
    ]
  }
]
