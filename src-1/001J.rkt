#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup.rkt")

(provide part:001J)

(define part:001J
  @definition[
    #:id "001J"
    #:indexes @list[
      @index[#:key "れとらくと"]{レトラクト}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ ((retract (seq "A" "B")) . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (retract-retraction . elem-of . ("B" . fun-type . "A")))}
        @list-item{@($ (retract-section . elem-of . ("A" . fun-type . "B")))}
        @list-item{@($ (retract-id . elem-of . (d-fun-type ("x" . elem-of . "A") ((retract-retraction . fun-apply  . (retract-section . fun-apply . "x")) . id-type . "x"))))}
      ]
      @($ (retract (seq "A" "B")))は@($ ("A" . retract-rel . "B"))と書くこともある。@($ ("A" . retract-rel . "B"))の要素がある時、@${A}は@${B}の@dfn{レトラクト(retract)}であると言う。また、@($ ("A" . bi-retract-rel . "B"))を@($ (("A" . retract-rel . "B") . pair-type . ("B" . retract-rel . "A")))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001J)))
