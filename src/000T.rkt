#lang morg

(require "lib/math.rkt"
         "lib/index/notation.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かしゅく"]{可縮}
    @notation-index[#:key "IsContr"]{@(math is-contr)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。型@(math ((is-contr . $ . A) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (center . elem-of . A))}
      @list-item{@(math (contraction . elem-of . (d-fun-type (x . elem-of . A) (center . id-type . x))))}
    ]
    @(math (is-contr . $ . A))の要素がある時、@(math A)は@dfn{可縮(contractible)}であると言う。
  }
]
