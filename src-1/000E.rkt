#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/universe.rkt"
         "lib/markup.rkt")

(provide part:000E)

(define part:000E
  @rule[
    #:id "000E"
    #:indexes @list[
      @index[#:key "うちゅう"]{宇宙}
    ]
    @paragraph{
      @dfn{宇宙(universe)}についての規則は次で与えられる。
      @unordered-list[
        @list-item{階数@${i}に対して、型@${@universe{i}}を構成できる。}
        @list-item{階数@${i}と要素@($ ("A" . elem-of . @universe{i}))に対して、型@${@universe:el{A}}を構成できる。}
        @list-item{階数@${i}に対して、要素@($ (@universe:name{i} . elem-of . @universe{@level:succ{i}}))を構成できる。}
        @list-item{階数@${i}に対して、@($ (@universe:el{@universe:name{i}} . def-eq . @universe{i}))と定義される。}
        @list-item{階数@${i}と要素@($ ("A" . elem-of . @universe{i}))に対して、@($ (@universe:lift{A} . elem-of . @universe{@level:succ{i}}))を構成できる。}
        @list-item{階数@${i}と要素@($ ("A" . elem-of . @universe{i}))に対して、@($ (@universe:el{@universe:lift{A}} . def-eq . @universe:el{A}))と定義される。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000E)))
