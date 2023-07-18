#lang morg

(require "lib/math.rkt"
         "lib/math/empty.rkt"
         "lib/math/coproduct.rkt")

(define A "A")
(define B "B")

@section[
  #:id (current-id)
  #:title @%{有限余積}
  @paragraph{
    自然数型の他にも重要な帰納的型がある。最も簡単な帰納的型は@emph{空型}である。
  }
  (include-part "0030.rkt")
  @paragraph{
    空型には構成子が一つも与えられていない。よって、型理論の中の人にとっては@(math empty-type)の要素は存在しないはずである。言い換えれば、@(math empty-type)の要素は@emph{矛盾(contradiction)}を表し、帰納法原理は矛盾からはすべてを導けること、@emph{爆発原理(principle of explosionまたはex falso quodlibet)}を意味する。
  }
  @paragraph{
    次に簡単な帰納的型は@emph{余積}である。
  }
  (include-part "002Z.rkt")
  @paragraph{
    @(math (coproduct-type:in 1))と@(math (coproduct-type:in 2))が@(math (A . coproduct-type . B))の構成子であり、帰納法原理はやはりこれらの構成子のみを使って得られるものだけが@(math (A . coproduct-type . B))の要素であることを表す。
  }
]
