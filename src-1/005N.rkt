#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/proposition.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @exercise[
    #:id id
    #:title @%{前圏の構造同一原理}
    @paragraph{
      一価性と関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。同値@disp{
        @($ (("C" . id-type . "D") . equiv . (prop-compr ("F" . elem-of . (functor (seq "C" "D"))) @is-precat-equiv{F})))
      }を構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
