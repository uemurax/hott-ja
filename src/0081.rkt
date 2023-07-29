#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/id-over.rkt"
         "lib/math/localization.rkt")

(define i "i")
(define j "j")
(define G "G")
(define A "A")
(define C "C")
(define a "a")
(define f "f")
(define f- "f'")
(define x "x")
(define x- "x'")
(define y "y")
(define y- "y'")
(define k "k")
(define k- "k'")
(define s "s")
(define h "h")
(define p "p")
(define g "g")
(define b "b")

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
      @list-item{@(math A)の@dfn{弱@(math G)-局所化}@(math ((weak-localization . $* . G A) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{要素@(math (a . elem-of . A))に対して、要素@(math ((weak-localization:in . $ . a) . elem-of . (weak-localization . $* . G A)))を構成できる。}
      @list-item{@(math (k . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A))))を関数、@(math (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)))を要素とすると、要素@(math ((weak-localization:ext . $* . f y) . elem-of . (weak-localization . $* . G A)))を構成できる。}
      @list-item{@(math (k . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A))))を関数、@(math (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)))を要素とすると、同一視@(math ((weak-localization:is-ext . $* . f x) . elem-of . ((weak-localization:ext . $* . f ((G . record-field . local-generator:fun) . $* . k x)) . id-type . (f . $ . x))))を構成できる。}
      @list-item{@(math (b . elem-of . (weak-localization . $* . G A)))を要素、@(math j)を階数、@(math (C . elem-of . ((weak-localization . $* . G A) . fun-type . (universe . $ . j))))を型の族、@(math (s . elem-of . (d-fun-type (a . elem-of . A) (C . $ . (weak-localization:in . $ . a)))))と@(math (h . elem-of . (d-fun-type (implicit (k . elem-of . (G . record-field . local-generator:index))) (d-fun-type (implicit (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A)))) ((d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x))) . fun-type . (d-fun-type (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)) (C . $ . (weak-localization:ext . $* . f y))))))))と@(math (p . elem-of . (d-fun-type (implicit k) (d-fun-type (implicit f) (d-fun-type (g . elem-of . (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x)))) (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) ((h . $* . g ((G . record-field . local-generator:fun) . $* . k x)) . (id-type-over C (weak-localization:is-ext . $* . f x)) . (g . $ . x))))))))を関数とすると、要素@(math ((weak-localization:ind . $* . b C s h p) . elem-of . (C . $ . b)))を構成できる。}
      @list-item{@(math (a . elem-of . A))を要素、@(math j)を階数、@(math (C . elem-of . ((weak-localization . $* . G A) . fun-type . (universe . $ . j))))を型の族、@(math (s . elem-of . (d-fun-type (a . elem-of . A) (C . $ . (weak-localization:in . $ . a)))))と@(math (h . elem-of . (d-fun-type (implicit (k . elem-of . (G . record-field . local-generator:index))) (d-fun-type (implicit (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A)))) ((d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x))) . fun-type . (d-fun-type (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)) (C . $ . (weak-localization:ext . $* . f y))))))))と@(math (p . elem-of . (d-fun-type (implicit k) (d-fun-type (implicit f) (d-fun-type (g . elem-of . (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x)))) (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) ((h . $* . g ((G . record-field . local-generator:fun) . $* . k x)) . (id-type-over C (weak-localization:is-ext . $* . f x)) . (g . $ . x))))))))を関数とすると、@(math ((weak-localization:ind . $* . (weak-localization:in . $ . a) C s h p) . def-eq . (s . $ . a)))と定義される。}
      @list-item{@(math (k- . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f- . elem-of . (((G . record-field . local-generator:domain) . $ . k-) . fun-type . (weak-localization . $* . G A))))を関数、@(math (y- . elem-of . ((G . record-field . local-generator:codomain) . $ . k-)))を要素、@(math j)を階数、@(math (C . elem-of . ((weak-localization . $* . G A) . fun-type . (universe . $ . j))))を型の族、@(math (s . elem-of . (d-fun-type (a . elem-of . A) (C . $ . (weak-localization:in . $ . a)))))と@(math (h . elem-of . (d-fun-type (implicit (k . elem-of . (G . record-field . local-generator:index))) (d-fun-type (implicit (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A)))) ((d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x))) . fun-type . (d-fun-type (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)) (C . $ . (weak-localization:ext . $* . f y))))))))と@(math (p . elem-of . (d-fun-type (implicit k) (d-fun-type (implicit f) (d-fun-type (g . elem-of . (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x)))) (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) ((h . $* . g ((G . record-field . local-generator:fun) . $* . k x)) . (id-type-over C (weak-localization:is-ext . $* . f x)) . (g . $ . x))))))))を関数とすると、@(math ((weak-localization:ind . $* . (weak-localization:ext . $* . f- y-) C s h p) . def-eq . (h . $* . (abs x (weak-localization:ind . $* . (f- . $ . x) C s h p)) y-)))と定義される。}
      @list-item{@(math (k- . elem-of . (G . record-field . local-generator:index)))を要素、@(math (f- . elem-of . (((G . record-field . local-generator:domain) . $ . k-) . fun-type . (weak-localization . $* . G A))))を関数、@(math (x- . elem-of . ((G . record-field . local-generator:domain) . $ . k-)))を要素、@(math j)を階数、@(math (C . elem-of . ((weak-localization . $* . G A) . fun-type . (universe . $ . j))))を型の族、@(math (s . elem-of . (d-fun-type (a . elem-of . A) (C . $ . (weak-localization:in . $ . a)))))と@(math (h . elem-of . (d-fun-type (implicit (k . elem-of . (G . record-field . local-generator:index))) (d-fun-type (implicit (f . elem-of . (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A)))) ((d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x))) . fun-type . (d-fun-type (y . elem-of . ((G . record-field . local-generator:codomain) . $ . k)) (C . $ . (weak-localization:ext . $* . f y))))))))と@(math (p . elem-of . (d-fun-type (implicit k) (d-fun-type (implicit f) (d-fun-type (g . elem-of . (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) (C . $ . (f . $ . x)))) (d-fun-type (x . elem-of . ((G . record-field . local-generator:domain) . $ . k)) ((h . $* . g ((G . record-field . local-generator:fun) . $* . k x)) . (id-type-over C (weak-localization:is-ext . $* . f x)) . (g . $ . x))))))))を関数とすると、同一視@(math ((weak-localization:ind-is-ext . $* . f- x- C s h p) . elem-of . ((fun-apply-id/d . $* . (abs b (weak-localization:ind . $* . b C s h p)) (weak-localization:is-ext . $* . f- x-)) . id-type . (p . $* . (abs x (weak-localization:ind . $* . (f- . $ . x) C s h p)) x-))))を構成できる。}
    ]
  }
]
