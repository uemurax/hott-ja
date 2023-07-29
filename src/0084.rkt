#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt")

(define i "i")
(define G "G")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "きょくしょか"]{局所化}
    @notation-index[#:key "Loc"]{@(math localization)}
  ]
  @paragraph{
    @(math i)を階数、@(math (G . elem-of . (local-generator . $ . i)))を局所生成系、@(math (A . elem-of . (universe . $ . i)))を型とする。@(math A)の@dfn{@(math G)-局所化(@(math G)-localization)} @(math ((localization . $* . G A) . elem-of . (universe . $ . i)))を@(math (weak-localization . $* . (local-generator-add-codiagonal . $ . G) A))と定義する。
  }
]
