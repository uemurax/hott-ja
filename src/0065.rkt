#lang morg

(require "lib/math.rkt"
         "lib/math/functor.rkt")

@section[
  #:id (current-id)
  #:title @%{自然変換}
  @paragraph{
    @emph{自然変換}は関手の間の射の概念である。実際、関手を対象、自然変換を射とする前圏を構成できる(@ref["0069"])。さらに、終域が圏であるような関手のなす前圏は圏であることを示す(@ref["006C"])。
  }
  (include-part "0066.rkt")
  (include-part "0067.rkt")
  (include-part "0068.rkt")
  (include-part "0069.rkt")
  (include-part "006A.rkt")
  (include-part "006C.rkt")
  @paragraph{
    @(math (functor-cat . $* . "C" "D"))は@emph{普遍性}でも特徴づけられる(@ref["006R"])。
  }
  (include-part "006Q.rkt")
  (include-part "006R.rkt")
]
