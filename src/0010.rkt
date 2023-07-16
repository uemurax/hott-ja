#lang morg

(require "lib/math.rkt"
         "lib/markup/example.rkt")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "こうとうかんすう"]{恒等関数}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。@dfn{恒等関数(identity function)}@($ (@id-fun{A} . elem-of . ("A" . fun-type . "A")))を@($ (abs "x" "x"))と定義する。
  }
]
