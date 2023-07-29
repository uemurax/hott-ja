#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/fiber-coproduct.rkt")

(define i "i")
(define G "G")
(define k "k")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "D"]{@(math local-generator-add-codiagonal)}
  ]
  @paragraph{
    @(math i)を階数、@(math (G . elem-of . (local-generator . $ . i)))を局所生成系とする。局所生成系@(math ((local-generator-add-codiagonal . $ . G) . elem-of . (local-generator . $ . i)))を次のように定義する。
    @unordered-list[
      @list-item{@(math (local-generator:index . def-eq . ((G . record-field . local-generator:index) . coproduct-type . (G . record-field . local-generator:index))))}
      @list-item{@(math ((local-generator:fun . $ . ((coproduct-type:in 1) . $ . k)) . def-eq . ((G . record-field . local-generator:fun) . $ . k)))}
      @list-item{@(math ((local-generator:fun . $ . ((coproduct-type:in 2) . $ . k)) . def-eq . (codiagonal . $ . ((G . record-field . local-generator:fun) . $ . k))))}
      @list-item{@(math local-generator:domain)と@(math local-generator:codomain)は@(math local-generator:fun)から決まる。}
    ]
  }
]
