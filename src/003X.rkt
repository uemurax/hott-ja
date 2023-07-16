#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/n-type.rkt"
         "lib/math/nat.rkt"
         "lib/math/coproduct.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @unordered-list[
      @list-item{型@($ (trunc-level . elem-of . (universe level:zero)))を@($ (nat . coproduct-type . (unit-type . coproduct-type . unit-type)))と定義する。}
      @list-item{要素@($ (trunc-level:-2 . elem-of . trunc-level))を@($ ((coproduct-type:in 2) ((coproduct-type:in 2) unit-elem)))と定義する。}
      @list-item{要素@($ (trunc-level:-1 . elem-of . trunc-level))を@($ ((coproduct-type:in 2) ((coproduct-type:in 1) unit-elem)))と定義する。}
      @list-item{要素@($ ("n" . elem-of . trunc-level))に対して、要素@($ (@trunc-level:succ{n} . elem-of . trunc-level))を@($ ((trunc-level:succ trunc-level:-2) . def-eq . trunc-level:-1))と@($ ((trunc-level:succ trunc-level:-1) . def-eq . ((coproduct-type:in 1) nat:zero)))と@($ ((trunc-level:succ ((coproduct-type:in 1) "n")) . def-eq . ((coproduct-type:in 1) @nat:succ{n})))と定義する。}
    ]
    要素@($ ("n" . elem-of . nat))に対しては、@($ (coproduct-type:in/symb 1))を省略して@${n}自身を@($ trunc-level)の要素とみなす。
  }
]
