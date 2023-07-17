#lang morg

(require "lib/math/level.rkt"
         "lib/math/universe.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    @unordered-list[
      @list-item{@${@universe:el/symb}はよく省略する。つまり、要素@($ ("A" . elem-of . @universe{i}))そのものを型とみなす。}
      @list-item{@${@universe:lift/symb}はよく省略する。つまり、要素@($ ("A" . elem-of . @universe{i}))は@${@universe{@level:succ{i}}}の要素でもあるとみなす。}
      @list-item{@${@universe{i}}と@${@universe:name{i}}を表記上区別しない。つまり、@${@universe{i}}そのものを@${@universe{@level:succ{i}}}の要素とみなす。}
    ]
  }
]