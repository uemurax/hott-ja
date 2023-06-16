#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:0014)

(define part:0014
  @example[
    #:id "0014"
    #:indexes @list[
      @index[#:key "かりーか"]{カリー化}
      @index[#:key "ぎゃくかりーか"]{逆カリー化}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("C" . elem-of . (d-fun-type ("x" . elem-of . "A") (("B" . fun-apply . "x") . fun-type . @universe{i}))))を型の族とする。
      @unordered-list[
        @list-item{関数@($ ("f" . elem-of . (d-fun-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("C" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z"))))))に対し、@emph{カリー化(currying)}@disp{
          @($ (@curry{f} . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y"))))))
        }を@($ (abs (seq "x" "y") ("f" . fun-apply . (pair (seq "x" "y")))))と定義する。}
        @list-item{関数@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y"))))))に対し、@emph{逆カリー化(uncurrying)}@disp{
          @($ (@uncurry{g} . elem-of . (d-fun-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("C" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z"))))))
        }を@($ (abs "z" ("g" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z")))))と定義する。}
      ]
    }
  ])

  (module+ main
    (require morg/text)
    (display (->text part:0014)))