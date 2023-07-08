#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "よねだうめこみ"]{米田埋め込み}
    ]
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。@dfn{米田埋め込み(Yoneda embedding)}@($ (@yoneda{C} . elem-of . (functor (seq "C" @presheaf-cat{C}))))を@ref["006R"]と@ref["006M"]で@${@cat:map/fun{C}}に対応するものと定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
