#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/rule.rkt"
         "lib/math.rkt"
         "lib/math/empty.rkt"
         "lib/math/level.rkt")

(provide-part (id)
  @rule[
    #:id id
    #:indexes @list[
      @index[#:key "くうがた"]{空型}
    ]
    @paragraph{
      @unordered-list[
        @list-item{@dfn{空型(empty type)}@($ (empty-type . elem-of . (universe level:zero)))を構成できる。}
        @list-item{@($ ("c" . elem-of . empty-type))を要素、@${i}を階数、@($ ("A" . elem-of . (empty-type . fun-type . @universe{i})))を型の族とすると、要素@($ ((empty-type:ind (seq "c" "A")) . elem-of . ("A" . fun-apply . "c")))を構成できる。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
