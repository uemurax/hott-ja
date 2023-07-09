#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/corollary.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

(provide-part (id)
  @corollary[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("A" . elem-of . @presheaf-cat{C}))と@($ ("B" . elem-of . @presheaf-cat{C}))を前層、@($ ("f" . elem-of . (cat:map . fun-apply . (seq "A" "B"))))を射とする。次は論理的に同値である。
      @ordered-list[
        @list-item{@${f}は@${@presheaf-cat{C}}の射として同型である。}
        @list-item{任意の対象@($ ("x" . elem-of . "C"))に対して、関数@($ ((abs "a" ("f" . fun-apply . "a")) . elem-of . (("A" . fun-apply . "x") . fun-type . ("B" . fun-apply . "x"))))は同値である。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
