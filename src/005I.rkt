#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/proposition.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "けん"]{圏}
  ]
  @paragraph{
    @${i}を階数とする。
    @unordered-list[
      @list-item{前圏@($ ("C" . elem-of . @precat{i}))に対して、型@($ (@is-cat{C} . elem-of . @universe{i}))を
      @disp{
        @($ (d-fun-type ("x" . elem-of . "C") (is-contr (d-pair-type ("y" . elem-of . "C") ("x" . cat:iso . "y")))))
      }
      と定義する。}
      @list-item{型@($ (@cat{i} . elem-of . @universe{i}))を@($ (prop-compr ("C" . elem-of . @precat{i}) @is-cat{C}))と定義する。}
    ]
    @${@cat{i}}の要素を(階数@${i}の)@dfn{圏(category)}と呼ぶ。
  }
]
