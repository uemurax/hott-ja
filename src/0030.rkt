#lang morg

(require "lib/markup/rule.rkt"
         "lib/math.rkt"
         "lib/math/empty.rkt"
         "lib/math/level.rkt")

(define c "c")
(define A "A")
(define i "i")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "くうがた"]{空型}
  ]
  @paragraph{
    @unordered-list[
      @list-item{@dfn{空型(empty type)}@(math (empty-type . elem-of . (universe . $ . level:zero)))を構成できる。}
      @list-item{@(math (c . elem-of . empty-type))を要素、@(math i)を階数、@(math (A . elem-of . (empty-type . fun-type . (universe . $ . i))))を型の族とすると、要素@(math ((empty-type:ind . $* . c A) . elem-of . (A . $ . c)))を構成できる。}
    ]
  }
]
