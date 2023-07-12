#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/connected.rkt"
         "lib/math/truncation.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "nれんけつ"]{@${n}連結}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("n" . elem-of . trunc-level))を要素とする。型@($ ((is-connected (seq "n" "A")) . elem-of . @universe{i}))を@($ (is-contr (trunc "n" "A")))と定義する。@($ (is-connected (seq "n" "A")))の要素がある時、@${A}は@dfn{@${n}連結(@${n}-connected)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
