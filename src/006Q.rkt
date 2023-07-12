#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/bifunctor.rkt"
         "lib/math/cat.rkt"
         "lib/math/logic.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "そうかんしゅ"]{双関手}
    ]
    @paragraph{
      @${i}を階数、@($ (("C" . _ . "1") . elem-of . @precat{i}))と@($ (("C" . _ . "2") . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。型@($ ((bifunctor ("C" . _ . "1") ("C" . _ . "2") "D") . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (bifunctor:obj . elem-of . ((("C" . _ . "1") . record-field . cat:obj) . fun-type . ((("C" . _ . "2") . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj)))))}
        @list-item{@($ (bifunctor:map-1 . elem-of . (d-fun-type (implicit (seq ("x" . _ . "11") ("x" . _ . "12"))) ((cat:map . fun-apply . (seq ("x" . _ . "11") ("x" . _ . "12"))) . fun-type . (d-fun-type (("x" . _ . "2") . elem-of . ("C" . _ . "2")) (cat:map . fun-apply . (seq (bifunctor:obj . fun-apply . (seq ("x" . _ . "11") ("x" . _ . "2"))) (bifunctor:obj . fun-apply . (seq ("x" . _ . "12") ("x" . _ . "2"))))))))))}
        @list-item{@($ (bifunctor:map-2 . elem-of . (d-fun-type (("x" . _ . "1") . elem-of . ("C" . _ . "1")) (d-fun-type (implicit (seq ("x" . _ . "21") ("x" . _ . "22"))) ((cat:map . fun-apply . (seq ("x" . _ . "21") ("x" . _ . "22"))) . fun-type . (cat:map . fun-apply . (seq (bifunctor:obj . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "21"))) (bifunctor:obj . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "22"))))))))))}
        @list-item{@($ (blank . elem-of . (forall (("x" . _ . "1") . elem-of . ("C" . _ . "1")) (forall (("x" . _ . "2") . elem-of . ("C" . _ . "2")) ((bifunctor:map-1 . fun-apply . (seq (cat:id . fun-apply . ("x" . _ . "1")) ("x" . _ . "2"))) . id-type . (cat:id . fun-apply . (bifunctor:obj . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))))}
        @list-item{@($ (blank . elem-of . (forall (seq ("x" . _ . "11") ("x" . _ . "12") ("x" . _ . "13")) (forall (("x" . _ . "2") . elem-of . ("C" . _ . "2")) (forall (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "11") ("x" . _ . "12")))) (forall (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "12") ("x" . _ . "13")))) ((bifunctor:map-1 . fun-apply . (seq (("f" . _ . "2") . cat:comp-bin . ("f" . _ . "1")) ("x" . _ . "2"))) . id-type . ((bifunctor:map-1 . fun-apply . (seq ("f" . _ . "2") ("x" . _ . "2"))) . cat:comp-bin . (bifunctor:map-1 . fun-apply . (seq ("f" . _ . "1") ("x" . _ . "2")))))))))))}
        @list-item{@($ (blank . elem-of . (forall (("x" . _ . "1") . elem-of . ("C" . _ . "1")) (forall (("x" . _ . "2") . elem-of . ("C" . _ . "2")) ((bifunctor:map-2 . fun-apply . (seq ("x" . _ . "1") (cat:id . fun-apply . ("x" . _ . "2")))) . id-type . (cat:id . fun-apply . (bifunctor:obj . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))))}
        @list-item{@($ (blank . elem-of . (forall (("x" . _ . "1") . elem-of . ("C" . _ . "1")) (forall (seq ("x" . _ . "21") ("x" . _ . "22") ("x" . _ . "23")) (forall (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "21") ("x" . _ . "22")))) (forall (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "22") ("x" . _ . "23")))) ((bifunctor:map-2 . fun-apply . (seq ("x" . _ . "1") (("f" . _ . "2") . cat:comp-bin . ("f" . _ . "1")))) . id-type . ((bifunctor:map-2 . fun-apply . (seq ("x" . _ . "1") ("f" . _ . "2"))) . cat:comp-bin . (bifunctor:map-2 . fun-apply . (seq ("x" . _ . "1") ("f" . _ . "1")))))))))))}
        @list-item{@($ (blank . elem-of . (forall (seq ("x" . _ . "11") ("x" . _ . "12")) (forall (seq ("x" . _ . "21") ("x" . _ . "22")) (forall (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "11") ("x" . _ . "12")))) (forall (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "21") ("x" . _ . "22")))) (((bifunctor:map-1 . fun-apply . (seq ("f" . _ . "1") ("x" . _ . "22"))) . cat:comp-bin . (bifunctor:map-2 . fun-apply . (seq ("x" . _ . "11") ("f" . _ . "2")))) . id-type . ((bifunctor:map-2 . fun-apply . (seq ("x" . _ . "12") ("f" . _ . "2"))) . cat:comp-bin . (bifunctor:map-1 . fun-apply . (seq ("f" . _ . "1") ("x" . _ . "21")))))))))))}
      ]
      @($ (bifunctor ("C" . _ . "1") ("C" . _ . "2") "D"))の要素を@($ (seq ("C" . _ . "1") ("C" . _ . "2")))から@${D}への@dfn{双関手(bifunctor)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
