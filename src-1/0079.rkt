#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。関数@($ ("p" . elem-of . ((paren ("A" . fun-type . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))) . fun-type . (paren ("A" . fun-type . "A")))))を@($ (abs "f" (abs "x" ((proj 1) ("f" . fun-apply . "x")))))とし、型@($ ((section-of-proj (seq "A" "B")) . elem-of . @universe{i}))を@($ (fiber (seq "p" @id-fun{A})))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
