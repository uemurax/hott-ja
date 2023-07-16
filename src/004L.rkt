#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "はんずいはんどうち"]{半随伴同値}
  ]
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。型@($ (@is-hae{f} . elem-of . @universe{i}))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@($ (is-hae:inv . elem-of . ("B" . fun-type . "A")))}
      @list-item{@($ (is-hae:unit . elem-of . ((is-hae:inv . fun-comp . "f") . homotopy . @id-fun{A})))}
      @list-item{@($ (is-hae:counit . elem-of . (("f" . fun-comp . is-hae:inv) . homotopy . @id-fun{B})))}
      @list-item{@($ (is-hae:coh . elem-of . (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . (is-hae:unit . fun-apply . "x")) . id-type . (is-hae:counit . fun-apply . ("f" . fun-apply . "x"))))))}
    ]
    @${@is-hae{f}}の要素がある時、@${f}は@dfn{半随伴同値(half adjoint equivalence)}であると言う。
  }
]
