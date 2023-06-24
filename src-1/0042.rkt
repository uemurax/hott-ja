#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とすると、型@${@is-contr{A}}は命題である。
    }
    #:proof @proof[
      @paragraph{
        @ref["0041"]より、@($ (@is-contr{A} . fun-type . @is-contr{@is-contr{A}}))を示せばよい。@${A}が可縮であると仮定する。要素@($ (("a" . _ . "0") . elem-of . "A"))を得る。レトラクトの列
        @disp{
          @eq-reasoning[
            @${@is-contr{A}}
            @($ retract-rel/symb) @%{定義}
            @($ (d-pair-type ("a" . elem-of . "A") (d-fun-type ("x" . elem-of . "A") ("a" . id-type . "x"))))
            @($ retract-rel/symb) @%{@${A}は可縮}
            @($ (d-fun-type ("x" . elem-of . "A") (("a" . _ . "0") . id-type . "x")))
          ]
        }
        を得て、最後の型は@ref["001L"]と@ref["0029"]より可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
