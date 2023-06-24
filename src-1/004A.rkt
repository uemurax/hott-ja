#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @notation[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。関数外延性の下で@($ (d-fun-type ("x" . elem-of . "A") (is-prop ("B" . fun-apply . "x"))))の要素がある時、@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))のことを@($ (prop-compr ("x" . elem-of . "A") ("B" . fun-apply . "x")))と書くことがある。さらに、要素@($ ("c" . elem-of . (prop-compr ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対して、@($ (proj/symb 1))を省略して@${c}そのものを@${A}の要素とみなすことがある。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
