#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/presheaf.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。@${@presheaf-cat{C}}と@($ (functor-cat (seq @opposite-cat{C} @set-cat{i})))の間の前圏の同型を構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
