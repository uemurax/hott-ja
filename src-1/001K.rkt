#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001K)

(define part:001K
  @proposition[
    #:id "001K"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("r" . elem-of . (retract (seq "A" "B"))))を要素とする。@${B}が可縮ならば@${A}も可縮である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("d" . elem-of . @is-contr{B}))と仮定する。要素@($ ("a" . elem-of . "A"))と@($ ("p" . elem-of . (d-fun-type ("x" . elem-of . "A") ("a" . id-type . "x"))))を構成すればよい。仮定@${d}から@($ ("b" . elem-of . "B"))と@($ ("q" . elem-of . (d-fun-type ("y" . elem-of . "B") ("b" . id-type . "y"))))を得る。仮定@${r}から@($ ("f" . elem-of . ("B" . fun-type . "A")))と@($ ("g" . elem-of . ("A" . fun-type . "B")))と@($ ("t" . elem-of . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . ("g" . fun-apply . "x")) . id-type . "x"))))を得る。@($ ("a" . def-eq . ("f" . fun-apply . "b")))と定義する。@${p}を定義するために、@($ ("x" . elem-of . "A"))を仮定する。@($ (("q" . fun-apply . ("g" . fun-apply . "x")) . elem-of . ("b" . id-type . ("g" . fun-apply . "x"))))と@($ (("t" . fun-apply . "x") . elem-of . (("f" . fun-apply . ("g" . fun-apply . "x")) . id-type . "x")))に注意して、@($ (("p" . fun-apply . "x") . def-eq . (("t" . fun-apply . "x") . id-comp . (fun-apply-id (seq "f" ("q" . fun-apply . ("g" . fun-apply . "x")))))))と定義すればよい。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:001K)))
