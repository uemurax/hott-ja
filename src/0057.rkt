#lang morg

(require "lib/math.rkt"
         "lib/math/logic.rkt")

(define P "P")

@section[
  #:id (current-id)
  #:title @%{述語論理}
  @paragraph{
    命題の概念の導入により、@emph{一階述語論理}を型理論の中で模倣できる。
  }
  (include-part "0058.rkt")
  (include-part "005A.rkt")
  @paragraph{
    ただし、特別な公理を課さない限り型理論で模倣できる論理は@emph{直観主義論理}である。特に、命題@(math P)に対して@(math (P . logic-or . (logic-neg P)))が真であるとは限らない。
  }
  (include-part "0059.rkt")
  @paragraph{
    排中律は従来の数学では当たり前のように使われるが、ホモトピー型理論ではほとんど@emph{排中律を仮定しない}。
  }
]
