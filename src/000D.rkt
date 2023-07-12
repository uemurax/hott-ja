#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/markup/rule.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @rule[
    #:id id
    #:indexes @list[
      @index[#:key "かいすう"]{階数}
    ]
    @paragraph{
      @dfn{階数(level)}についての規則は次で与えられる。
      @unordered-list[
        @list-item{階数@($ level:zero)を構成できる。}
        @list-item{階数@${i}に対し、階数@${@level:succ{i}}を構成できる。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
