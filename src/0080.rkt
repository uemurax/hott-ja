#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define G "G")
(define A "A")
(define k "k")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "IsLocal"]{@(math is-local)}
    @index[#:key "G-きょくしょてき"]{@(math G)-局所的}
  ]
  @paragraph{
    @(math i)を階数、@(math (G . elem-of . (local-generator . $ . i)))を局所生成系、@(math (A . elem-of . (universe . $ . i)))を型とする。型@(math ((is-local . $* . G A) . elem-of . (universe . $ . i)))を@disp{
      @(math (forall (k . elem-of . (G . record-field . local-generator:index)) (is-equiv . $ . (abs (f . elem-of . (((G . record-field . local-generator:codomain) . $ . k) . fun-type . A)) (f . fun-comp . ((G . record-field . local-generator:fun) . $ . k))))))
    }と定義する。@(math (is-local . $* . G A))の要素があるとき、@(math A)は@dfn{@(math G)-局所的(@(math G)-local)}であると言う。
  }
]
