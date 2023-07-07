#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "ぜんけんのどうち"]{前圏の同型}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。型@($ (@is-precat-equiv{F} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (blank . elem-of . (is-equiv ("F" . record-field . functor:obj))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (is-equiv (("F" . record-field . functor:map) . fun-apply/implicit . (seq ("x" . _ . "1") ("x" . _ . "2")))))))}
      ]
      @${@is-precat-equiv{F}}の要素がある時、@${F}は@dfn{前圏の同型(isomorphism of precategories)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
