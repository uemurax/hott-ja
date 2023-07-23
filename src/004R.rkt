#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt"
         (prefix-in tex: morg/math/tex)
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")
(define ε tex:varepsilon)
(define η tex:eta)
(define x "x")
(define p "p")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とすると、型@(math (is-hae . $ . f))は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@(math f)が半随伴同値であると仮定して@(math (is-hae . $ . f))が可縮であることを示せばよい。@ref["004M"]より@(math f)は同値である。レトラクト
      @disp{
        @eq-reasoning[
          @(math (is-hae . $ . f))
          @(math retract-rel/symb) @%{並び替え}
          @(math (d-pair-type (g . elem-of . (B . fun-type . A)) (d-pair-type (ε . elem-of . ((f . fun-comp . g) . homotopy . id-fun)) (d-pair-type (η . elem-of . ((g . fun-comp . f) . homotopy . id-fun)) (d-fun-type (x . elem-of . A) ((f . $ . (η . $ . x)) . id-type . (ε . $ . (f . $ . x))))))))
          @(math retract-rel/symb) @%{@ref["004Q"]。可縮性から適当な@(math g)と@(math ε)を取れる。}
          @(math (d-pair-type (η . elem-of . ((g . fun-comp . f) . homotopy . id-fun)) (d-fun-type (x . elem-of . A) ((f . $ . (η . $ . x)) . id-type . (ε . $ . (f . $ . x))))))
          @(math retract-rel/symb) @%{@ref["001A"]}
          @(math (d-fun-type (x . elem-of . A) (d-pair-type (p . elem-of . ((g . $ . (f . $ . x)) . id-type . x)) ((f . $ . p) . id-type . (ε . $ . (f . $ . x))))))
        ]
      }
      を得て、最後の型は@ref["004S"]と@ref["0029"]より可縮である。
    }
  ]
]
