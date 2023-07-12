#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "どうけい"]{同型}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を射とする。
      @unordered-list[
        @list-item{型@($ (@cat:linv{f} . elem-of . @universe{i}))を@($ (record-type (seq (cat:linv:inv . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1")))) (cat:linv:id . elem-of . ((cat:linv:inv . cat:comp-bin . "f") . id-type . (cat:id . fun-apply . ("x" . _ . "1")))))))と定義する。}
        @list-item{型@($ (@cat:rinv{f} . elem-of . @universe{i}))を@($ (record-type (seq (cat:rinv:inv . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1")))) (cat:rinv:id . elem-of . (("f" . cat:comp-bin . cat:rinv:inv) . id-type . (cat:id . fun-apply . ("x" . _ . "2")))))))と定義する。}
        @list-item{型@($ (@cat:is-iso{f} . elem-of . @universe{i}))を@($ (record-type (seq (cat:is-iso:linv . elem-of . @cat:linv{f}) (cat:is-iso:rinv . elem-of . @cat:rinv{f}))))と定義する。}
      ]
      @${@cat:is-iso{f}}の要素がある時、@${f}は@dfn{同型(isomorphism)}であるという。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
