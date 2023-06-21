#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math/id.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

(provide part:0027)

(define part:0027
  @example[
    #:id "0027"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ (@id-sym-sym{p} . elem-of . (@id-inv{@id-inv{p}} . id-type . "p")))を帰納法により@($ ((id-sym-sym (refl ("a" . _ . "1"))) . def-eq . (refl (refl ("a" . _ . "1")))))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0027)))
