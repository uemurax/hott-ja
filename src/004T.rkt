#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/qinv.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@($ (@qinv{f} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (qinv:inv . elem-of . ("B" . fun-type . "A")))}
        @list-item{@($ (qinv:unit . elem-of . ((qinv:inv . fun-comp . "f") . homotopy . @id-fun{A})))}
        @list-item{@($ (qinv:counit . elem-of . (("f" . fun-comp . qinv:inv) . homotopy . @id-fun{B})))}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
