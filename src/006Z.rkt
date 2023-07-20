#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         morg/eq-reasoning)

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define x "x")
(define y "y")
(define a "a")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏、@(math (F . elem-of . (functor . $* . C D)))を関手、@(math (y . elem-of . D))を対象とする。@(math C)が圏で、@(math F)が充満忠実ならば、@(math (iso-fiber . $* . F y))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]を適用し、@(math (a . elem-of . (iso-fiber . $* . F y)))を仮定して@(math (iso-fiber . $* . F y))が可縮であることを示す。レトラクト
      @disp{
        @eq-reasoning[
          @(math (iso-fiber . $* . F y))
          @(math retract-rel/symb) @%{定義}
          @(math (d-pair-type (x . elem-of . C) ((F . $ . x) . cat:iso . y)))
          @(math retract-rel/symb) @%{@(math (a . record-field . iso-fiber:iso))と合成}
          @(math (d-pair-type (x . elem-of . C) ((F . $ . (a . record-field . iso-fiber:obj)) . cat:iso . (F . $ . x))))
          @(math retract-rel/symb) @%{@ref["0060"]と@ref["0061"]}
          @(math (d-pair-type (x . elem-of . C) ((a . record-field . iso-fiber:obj) . cat:iso . x)))
        ]
      }
      を得て、最後の型は@(math C)が圏なので可縮である。
    }
  ]
]
