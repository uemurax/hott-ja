#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/n-type.rkt"
         "lib/math/nat.rkt"
         "lib/math/coproduct.rkt")

(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "TruncLevel"]{@(math trunc-level)}
    @notation-index[#:key "-2"]{@(math trunc-level:-2) (truncation level)}
    @notation-index[#:key "-1"]{@(math trunc-level:-1) (truncation level)}
  ]
  @paragraph{
    @unordered-list[
      @list-item{型@(math (trunc-level . elem-of . (universe . $ . level:zero)))を@(math (nat . coproduct-type . (unit-type . coproduct-type . unit-type)))と定義する。}
      @list-item{要素@(math (trunc-level:-2 . elem-of . trunc-level))を@(math ((coproduct-type:in 2) . $ . ((coproduct-type:in 2) . $ . unit-elem)))と定義する。}
      @list-item{要素@(math (trunc-level:-1 . elem-of . trunc-level))を@(math ((coproduct-type:in 2) . $ . ((coproduct-type:in 1) . $ . unit-elem)))と定義する。}
      @list-item{要素@(math (n . elem-of . trunc-level))に対して、要素@(math ((trunc-level:succ . $ . n) . elem-of . trunc-level))を@(math ((trunc-level:succ . $ . trunc-level:-2) . def-eq . trunc-level:-1))と@(math ((trunc-level:succ . $ . trunc-level:-1) . def-eq . ((coproduct-type:in 1) . $ . nat:zero)))と@(math ((trunc-level:succ . $ . ((coproduct-type:in 1) . $ . n)) . def-eq . ((coproduct-type:in 1) . $ . (nat:succ . $ . n))))と定義する。}
    ]
    要素@(math (n . elem-of . nat))に対しては、@(math (coproduct-type:in 1))を省略して@(math n)自身を@(math trunc-level)の要素とみなす。
  }
]
