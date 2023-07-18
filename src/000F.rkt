#lang morg

(require "lib/math/level.rkt"
         "lib/math/universe.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")

@notation[
  #:id (current-id)
  @paragraph{
    @unordered-list[
      @list-item{@(math universe:el)はよく省略する。つまり、要素@(math (A . elem-of . (universe . $ . i)))そのものを型とみなす。}
      @list-item{@(math universe:lift)はよく省略する。つまり、要素@(math (A . elem-of . (universe . $ . i)))は@(math (universe . $ . (level:succ . $ . i)))の要素でもあるとみなす。}
      @list-item{@(math (universe . $ . i))と@(math (universe:name . $ . i))を表記上区別しない。つまり、@(math (universe . $ . i))そのものを@(math (universe . $ . (level:succ . $ . i)))の要素とみなす。}
    ]
  }
]
