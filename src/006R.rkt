#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/bifunctor.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))と@($ ("X" . elem-of . @precat{i}))を前圏とする。同値
      @disp{
        @($ ((functor (seq "X" (functor-cat (seq "C" "D")))) . equiv . (bifunctor "C" "X" "D")))
      }
      を構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
