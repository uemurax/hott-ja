#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

@theorem[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。@${C}と@${D}が圏ならば、次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@${F}は前圏の同型である。}
      @list-item[#:id "0001"]{@${F}は弱圏同値である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node "005P" #:anchor "0000"]から@anchor-ref[#:node "005P" #:anchor "0001"]は自明である。
    }
    @paragraph{
      @anchor-ref[#:node "005P" #:anchor "0001"]から@anchor-ref[#:node "005P" #:anchor "0000"]を示す。@($ (("F" . record-field . functor:obj) . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))))が同値であることを示せばよいが、これは@ref["005X"]と@ref["0063"]と@ref["0074"]と@ref["0075"]から従う。
    }
  ]
]
