#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "しゅうごう"]{集合}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。型@($ (@is-set{A} . elem-of . @universe{i}))を@($ (is-trunc (seq trunc-level:0 "A")))と定義する。@${@is-set{A}}の要素がある時、@${A}は@dfn{集合(set)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
