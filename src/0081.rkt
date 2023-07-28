#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt")

(define i "i")
(define G "G")
(define A "A")
(define a "a")
(define f "f")
(define x "x")
(define y "y")
(define k "k")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "じゃくきょくしょか"]{弱局所化}
    @notation-index[#:key "WLoc"]{@(math weak-localization)}
    @notation-index[#:key "in"]{@(math weak-localization:in) (弱局所化)}
    @notation-index[#:key "ext"]{@(math weak-localization:ext) (弱局所化)}
    @notation-index[#:key "is-ext"]{@(math weak-localization:is-ext) (弱局所化)}
  ]
  @paragraph{
    @(math i)を階数、@(math (G . elem-of . (local-generator . $ . i)))を局所生成系、@(math (A . elem-of . (universe . $ . i)))を型とする。
    @unordered-list[
      @list-item{@dfn{弱局所化}@(math ((weak-localization . $* . G A) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))に対して、要素@(math ((weak-localization:in . $ . a) . elem-of . (weak-localization . $* . G A)))を構成できる。}
      @list-item{@(math (k . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A))))を関数、@(math (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)))を要素とすると、要素@(math ((weak-localization:ext . $* . f y) . elem-of . (weak-localization . $* . G A)))を構成できる。}
      @list-item{@(math (k . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A))))を関数、@(math (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)))を要素とすると、同一視@(math ((weak-localization:is-ext . $* . f x) . elem-of . ((weak-localization:ext . $* . f ((G . record-field . local-generator:fun) . $* . k x)) . id-type . (f . $ . x))))を構成できる。}
      @list-item{(induction principle coming soon)}
    ]
  }
]
