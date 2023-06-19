#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001Z)

(define part:001Z
  @definition[
    #:id "001Z"
    #:indexes @list[
      @index[#:key "かんすうがいえんせい"]{関数外延性}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。関数型@($ (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))が@dfn{関数外延性(function extensionality)}を満たすとは、@($ (d-fun-type ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (is-contr (d-pair-type ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (d-fun-type ("x" . elem-of . "A") (("f" . fun-apply . "x") . id-type . ("g" . fun-apply . "x")))))))の要素があることである。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001Z)))
