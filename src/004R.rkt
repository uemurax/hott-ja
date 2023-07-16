#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt"
         morg/eq-reasoning)

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とすると、型@${@is-hae{f}}は命題である。
  }
  #:proof @proof[
    @paragraph{
      @ref["0041"]より、@${f}が半随伴同値であると仮定して@${@is-hae{f}}が可縮であることを示せばよい。@ref["004M"]より@${f}は同値である。レトラクト
      @disp{
        @eq-reasoning[
          @${@is-hae{f}}
          @($ retract-rel/symb) @%{並び替え}
          @($ (d-pair-type ("g" . elem-of . ("B" . fun-type . "A")) (d-pair-type ("ε" . elem-of . (("f" . fun-comp . "g") . homotopy . @id-fun{B})) (d-pair-type ("η" . elem-of . (("g" . fun-comp . "f") . homotopy . @id-fun{A})) (d-pair-type ("x" . elem-of . "A") (("f" . fun-apply . ("η" . fun-apply . "x")) . id-type . ("ε" . fun-apply . ("f" . fun-apply . "x"))))))))
          @($ retract-rel/symb) @%{@ref["004Q"]。可縮性から適当な@${g}と@${ε}を取れる。}
          @($ (d-pair-type ("η" . elem-of . (("g" . fun-comp . "f") . homotopy . @id-fun{A})) (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . ("η" . fun-apply . "x")) . id-type . ("ε" . fun-apply . ("f" . fun-apply . "x"))))))
          @($ retract-rel/symb) @%{@ref["001A"]}
          @($ (d-fun-type ("x" . elem-of . "A") (d-pair-type ("p" . elem-of . (("g" . fun-apply . ("f" . fun-apply . "x")) . id-type . "x")) (("f" . fun-apply . "p") . id-type . ("ε" . fun-apply . ("f" . fun-apply . "x"))))))
        ]
      }
      を得て、最後の型は@ref["004S"]と@ref["0029"]より可縮である。
    }
  ]
]
