#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @corollary[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("n" . elem-of . trunc-level))を要素とする。@${A}が@${n}型ならば、@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))も@${n}型である。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
