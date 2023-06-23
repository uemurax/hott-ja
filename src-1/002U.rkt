#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/empty.rkt"
         "lib/math/coproduct.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{有限余積}
    @paragraph{
      自然数型の他にも重要な帰納的型がある。最も簡単な帰納的型は@emph{空型}である。
    }
    ;(include-part "0030.rkt")
    @paragraph{
      空型には構成子が一つも与えられていない。よって、型理論の中の人にとっては@($ empty-type)の要素は存在しないはずである。言い換えれば、@($ empty-type)の要素は@emph{矛盾(contradiction)}を表し、帰納法原理は矛盾からはすべてを導けること、@emph{爆発原理(principle of explosionまたはex falso quodlibet)}を意味する。
    }
    @paragraph{
      次に簡単な帰納的型は@emph{余積}である。
    }
    ;(include-part "002Z.rkt")
    @paragraph{
      @($ (coproduct-type:in/symb 1))と@($ (coproduct-type:in/symb 2))が@($ ("A" . coproduct-type . "B"))の構成子であり、帰納法原理はやはりこれらの構成子のみを使って得られるものだけが@($ ("A" . coproduct-type . "B"))の要素であることを表す。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
