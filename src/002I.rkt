#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ほもとぴー"]{ホモトピー}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を関数とする。型@($ (("f" . homotopy . "g") . elem-of . @universe{i}))を@($ (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x"))))と定義する。@($ ("f" . homotopy . "g"))の要素を@${f}と@${g}の間の@dfn{ホモトピー(homotopy)}と呼ぶ。
  }
]
