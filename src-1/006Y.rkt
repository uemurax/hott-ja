#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手、@($ ("y" . elem-of . "D"))を対象とする。型@($ ((iso-fiber (seq "F" "y")) . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (iso-fiber:obj . elem-of . "C"))}
        @list-item{@($ (iso-fiber:iso . elem-of . (("F" . fun-apply . iso-fiber:obj) . cat:iso . "y")))}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
