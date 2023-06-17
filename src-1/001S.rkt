#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001S)

(define part:001S
  @theorem[
    #:id "001S"
    #:indexes @list[
      @index[#:key "どういつしがたのきほんていり"]{同一視型の基本定理}
    ]
    #:title @%{同一視型の基本定理}
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("a" . elem-of . "A"))を要素、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("b" . elem-of .  ("B" . fun-apply . "a")))を要素とする。次の型は論理的に同値である。
      @ordered-list[
        @list-item{@($ (d-fun-type ("x" . elem-of . "A") (is-equiv (abs ("p" . elem-of . ("a" . id-type . "x")) (transport (seq "B" "p" "b"))))))}
        @list-item{@($ (d-fun-type ("x" . elem-of . "A") (("a" . id-type . "x") . equiv . ("B" . fun-apply . "x"))))}
        @list-item{@($ (d-fun-type ("x" . elem-of . "A") (retract (seq ("B" . fun-apply . "x") ("a" . id-type . "x")))))}
        @list-item{@($ (is-contr (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001S)))
