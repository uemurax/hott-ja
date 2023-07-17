#lang morg

(require "lib/markup/terminology.rkt"
         "lib/math.rkt")

@terminology[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しん"]{真}
  ]
  @paragraph{
    @${i}を階数、@($ ("P" . elem-of . @universe{i}))を型とする。@${P}が命題である場合、「@${P}の要素がある」の代わりに「@${P}は@dfn{真}である」という言い方をする。
  }
]