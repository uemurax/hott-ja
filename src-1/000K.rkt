#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math/level.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt")

(provide part:000K)

(define part:000K
  @rule[
    #:id "000K"
    #:indexes @list[
      @index[#:key "たんいがた"]{単位型}
    ]
    @paragraph{
      @unordered-list[
        @list-item{@dfn{単位型(unit type)}@($ (unit-type . elem-of . (universe level:zero)))を構成できる。}
        @list-item{要素@($ (unit-elem . elem-of . unit-type))を構成できる。}
        @list-item{要素@($ ("a" . elem-of . unit-type))に対し、@($ ("a" . def-eq . unit-elem))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000K)))
