#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/example.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @example[
    #:id id
    #:indexes @list[
      @index[#:key "ごうせいかんすう"]{合成関数}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))を関数とする。@dfn{合成関数(composed function)}@($ (("g" . fun-comp . "f") . elem-of . ("A" . fun-type . "C")))を@($ (abs "x" ("g" . fun-apply . ("f" . fun-apply . "x"))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
