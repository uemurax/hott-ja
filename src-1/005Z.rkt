#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/surjection.rkt"
         "lib/math/logic.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "ぜんしゃ"]{全射}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@($ (@is-surjective{f} . elem-of . @universe{i}))を@($ (forall ("y" . elem-of . "B") (exists ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . "y"))))と定義する。@${@is-surjective{f}}の要素がある時、@${f}は@dfn{全射(surjection)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
