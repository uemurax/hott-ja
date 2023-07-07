#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "かんしゅ"]{関手}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。型@($ ((functor (seq "C" "D")) . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (functor:obj . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))))}
        @list-item{@($ (functor:map . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2"))) ((("C" . record-field . cat:map) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (("D" . record-field . cat:map) . fun-apply . (seq (functor:obj . fun-apply . ("x" . _ . "1")) (functor:obj . fun-apply . ("x" . _ . "2"))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("C" . record-field . cat:obj)) ((functor:map . fun-apply . (("C" . record-field . cat:id) . fun-apply . "x")) . id-type . (("D" . record-field . cat:id) . fun-apply . (functor:obj . fun-apply . "x"))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) (d-fun-type (("f" . _ . "1") . elem-of . (("C" . record-field . cat:map) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (d-fun-type (("f" . _ . "2") . elem-of . (("C" . record-field . cat:map) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))) ((functor:map . fun-apply . (("C" . record-field . cat:comp) . fun-apply . (seq ("f" . _ . "2") ("f" . _ . "1")))) . id-type . (("D" . record-field . cat:comp) . fun-apply . (seq (functor:map . fun-apply . ("f" . _ . "2")) (functor:map . fun-apply . ("f" . _ . "1"))))))))))}
      ]
      @($ (functor (seq "C" "D")))の要素を@${C}から@${D}への@dfn{関手(functor)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
