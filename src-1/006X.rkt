#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。
      @ordered-list[
        @list-item[#:id "0000"]{任意の対象@($ ("x" . elem-of . "C"))に対して、恒等射@($ ((cat:id . fun-apply . "x") . elem-of . (cat:map . fun-apply . (seq "x" "x"))))は同型である。}
        @list-item[#:id "0001"]{任意の対象@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))と@($ (("x" . _ . "3") . elem-of . "C"))と@($ (("x" . _ . "4") . elem-of . "C"))と射@($ (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))と@($ (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))))と@($ (("f" . _ . "3") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "3") ("x" . _ . "4")))))に対して、@($ (("f" . _ . "2") . cat:comp-bin . ("f" . _ . "1")))と@($ (("f" . _ . "3") . cat:comp-bin . ("f" . _ . "2")))が同型ならば、@($ ("f" . _ . "1"))と@($ ("f" . _ . "2"))と@($ ("f" . _ . "3"))と@($ (cat:comp-bin ("f" . _ . "3") ("f" . _ . "2") ("f" . _ . "1")))も同型である。}
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "006X" #:anchor "0000"]は定義からすぐに確かめられる。@anchor-ref[#:node "006X" #:anchor "0001"]は@ref["005G"]と@ref["002F"]による。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
