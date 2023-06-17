#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001L)

(define part:001L
  @proposition[
    #:id "001L"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素とする。@${A}が可縮ならば@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))も可縮である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("c" . elem-of . @is-contr{A}))と仮定する。要素@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))と@($ ("q" . elem-of . (d-fun-type ("z" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))) ("p" . id-type . "z"))))を構成すればよい。仮定@${c}より@($ (("a" . _ . "0") . elem-of . "A"))と@($ ("r" . elem-of . (d-fun-type ("x" . elem-of . "A") (("a" . _ . "0") . id-type . "x"))))を得る。@($ ("p" . def-eq . (id-extension (seq ("r" . fun-apply . ("a" . _ . "1")) ("r" . fun-apply . ("a" . _ . "2"))))))と定義する。@${q}については、一般化したもの@($ ("q'" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("z" . elem-of . (("a" . _ . "1") . id-type . "x")) ((id-extension (seq ("r" . fun-apply . ("a" . _ . "1")) ("r" . fun-apply . "x"))) . id-type . "z")))))を構成し、@($ ("q" . def-eq . ("q'" . fun-apply . ("a" . _ . "2"))))と定義する。同一視型の帰納法により、要素@($ ("s" . elem-of . ((id-extension (seq ("r" . fun-apply . ("a" . _ . "1")) ("r" . fun-apply . ("a" . _ . "1")))) . id-type . (refl ("a" . _ . "1")))))を構成すればよいが、これは@ref["001M"]で構成した。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:001L)))
