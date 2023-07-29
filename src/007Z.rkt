#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt"
         "lib/math/level.rkt")

(define i "i")
(define k "k")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "LocalGen(i)"]{@(math (local-generator . $ . i))}
    @index[#:key "きょくしょせいせいけい"]{局所生成系}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((local-generator . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (local-generator:index . elem-of . (universe . $ . i)))}
      @list-item{@(math (local-generator:domain . elem-of . (local-generator:index . fun-type . (universe . $ . i))))}
      @list-item{@(math (local-generator:codomain . elem-of . (local-generator:index . fun-type . (universe . $ . i))))}
      @list-item{@(math (local-generator:fun . elem-of . (d-fun-type (k . elem-of . local-generator:index) ((local-generator:domain . $ . k) . fun-type . (local-generator:codomain . $ . k)))))}
    ]
    @(math (local-generator . $ . i))の要素を(階数@(math i)の)@dfn{局所生成系(local generator)}と呼ぶ。
  }
]
