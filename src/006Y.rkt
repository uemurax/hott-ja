#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define y "y")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手、@(math (y . elem-of . D))を対象とする。型@(math ((iso-fiber . $* . F y) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (iso-fiber:obj . elem-of . C))}
      @list-item{@(math (iso-fiber:iso . elem-of . ((F . $ . iso-fiber:obj) . cat:iso . y)))}
    ]
  }
]
