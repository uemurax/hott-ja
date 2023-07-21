#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define a "a")
(define a0 (a . _ . "0"))
(define x "x")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とすると、型@(math (is-contr . $ . A))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@(math ((is-contr . $ . A) . fun-type . (is-contr . $ . (is-contr . $ . A))))を示せばよい。@(math A)が可縮であると仮定する。要素@(math (a0 . elem-of . A))を得る。レトラクトの列
      @disp{
        @eq-reasoning[
          @(math (is-contr . $ . A))
          @(math retract-rel/symb) @%{定義}
          @(math (d-pair-type (a . elem-of . A) (d-fun-type (x . elem-of . A) (a . id-type . x))))
          @(math retract-rel/symb) @%{@(math A)は可縮}
          @(math (d-fun-type (x . elem-of . A) (a0 . id-type . x)))
        ]
      }
      を得て、最後の型は@ref["001L"]と@ref["0029"]より可縮である。
    }
  ]
]
