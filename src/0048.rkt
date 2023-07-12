#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("n" . elem-of . trunc-level))を要素とする。@($ (d-fun-type ("x" . elem-of . "A") (is-trunc (seq "n" ("B" . fun-apply . "x")))))の要素があるならば、@($ (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は@${n}型である。
    }
    #:proof @proof[
      @paragraph{
        @${n}についての帰納法による。@${n}が@($ trunc-level:-2)の場合は@ref["0029"]による。
      }
      @paragraph{
        @${n}の場合に主張が成り立つと仮定し、@${@trunc-level:succ{n}}の場合を示す。@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対し、@($ ("f" . id-type . "g"))が@${n}型であることを示す。関数外延性より、同値@($ (("f" . id-type . "g") . equiv . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))を得る。各@($ (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))は@${B}についての仮定より@${n}型であるから、帰納法の仮定と@ref["0045"]から@($ ("f" . id-type . "g"))は@${n}型である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
