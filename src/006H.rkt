#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/level.rkt"
         "lib/math/proposition.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数とする。前圏@($ (@set-cat{i} . elem-of . @precat{@level:succ{i}}))を次のように定義する。
      @unordered-list[
        @list-item{@($ (cat:obj . def-eq . (prop-compr ("A" . elem-of . @universe{i}) @is-set{A})))}
        @list-item{@($ (cat:map . def-eq . (abs (seq "A" "B") ("A" . fun-type . "B"))))}
        @list-item{恒等射は@ref["0010"]、合成は@ref["0011"]による。}
        @list-item{@ref["0048"]より、各@($ (cat:map . fun-apply . (seq "A" "B")))は集合である。}
        @list-item{他の公理は自明である。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
