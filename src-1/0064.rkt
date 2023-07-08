#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @corollary[
    #:id id
    #:title @%{圏の構造同一原理}
    @paragraph{
      一価性と関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @cat{i}))と@($ ("D" . elem-of . @cat{i}))を圏とすると、同値
      @disp{
        @($ (("C" . id-type . "D") . equiv . (prop-compr ("F" . elem-of . (functor (seq "C" "D"))) (is-weak-cat-equiv "F"))))
      }
      を得る。
    }
  ])

(module+ main
  (require morg/text)
  (preview))