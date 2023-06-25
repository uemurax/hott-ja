#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      一価性と関数外延性を仮定する。@${i}を階数、@($ ("n" . elem-of . trunc-level))を要素とする。@($ (trunc-type "n" "i"))は@${@trunc-level:succ{n}}型である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("A" . elem-of . (trunc-type "n" "i")))と@($ ("B" . elem-of . (trunc-type "n" "i")))を要素とする。一価性と@ref["0049"]と@ref["0043"]より、同値@($ (("A" . id-type . "B") . equiv . (("A" . record-field . trunc-type:type) . equiv . ("B" . record-field . trunc-type:type))))を得て、後者は@ref["0048"]と@ref["004X"]と@ref["0052"]から@${n}型である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
