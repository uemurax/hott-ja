#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt"
         "lib/math/ackermann.rkt")

(define n "n")
(define m "m")

@exercise[
  #:id (current-id)
  @paragraph{
    @emph{Ackermann関数}は二変数の関数@(math (ackermann . elem-of . (nat . fun-type . (nat . fun-type . nat))))で、次のように定義される。
    @unordered-list[
      @list-item{@(math ((ackermann . $* . nat:zero n) . def-eq . (nat:succ . $ . n)))}
      @list-item{@(math ((ackermann . $* . (nat:succ . $ . m) nat:zero) . def-eq . (ackermann . $* . m (nat:succ . $ . nat:zero))))}
      @list-item{@(math ((ackermann . $* . (nat:succ . $ . m) (nat:succ . $ . n)) . def-eq . (ackermann . $* . m (ackermann . $* . (nat:succ . $ . m) n))))}
    ]
    Ackermann関数の構成を@ref["002V"]に基づいて正当化せよ。ちなみに、Ackermann関数は原始再帰的でないことが知られているので、@ref["002X"]の特別な場合としては定義できない。関数型を使えることに注意するとよい。
  }
]
