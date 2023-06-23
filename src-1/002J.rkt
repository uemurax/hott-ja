#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。関数@($ ((abs "z" ((proj 1) "z")) . elem-of . ((d-pair-type (("x" . _ . "1") . elem-of . "A") (d-pair-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2")))) . fun-type . "A")))は同値である。
    }
    #:proof @proof[
      @paragraph{
        任意の要素@($ ("a" . elem-of . "A"))に対して、レトラクトの列
        @disp{
          @eq-reasoning[
            @($ (fiber (seq (abs "z" ((proj 1) "z")) "a")))
            @($ retract-rel/symb) @%{並び換え}
            @($ (d-pair-type (("x" . _ . "1") . elem-of . "A") (d-pair-type ("p" . elem-of . (("x" . _ . "1") . id-type . "a")) (d-pair-type (("x" . _ . "2") . elem-of . "A") (("x" . _ . "1") . id-type . ("x" . _ . "2"))))))
            @($ retract-rel/symb) @%{@ref["0026"]}
            @($ (d-pair-type (("x" . _ . "2") . elem-of . "A") ("a" . id-type . ("x" . _ . "2"))))
          ]
        }
        を得て、最後の型は@ref["001N"]により可縮である。
      }
    ]
])

(module+ main
  (require morg/text)
  (preview))
