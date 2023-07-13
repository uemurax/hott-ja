#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。関数@disp{
        @($ (@fun-apply-id{f} . elem-of . (d-fun-type (implicit (("x" . _ . "1") . elem-of . "A")) (d-fun-type (implicit (("x" . _ . "2") . elem-of . "A")) ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("f" . fun-apply . ("x" . _ . "1")) . id-type . ("f" . fun-apply . ("x" . _ . "2"))))))))
      }を@($ (abs (seq ("x" . _ . "1") ("x" . _ . "2") "z") (transport (seq (abs "x" (("f" . fun-apply . ("x" . _ . "1")) . id-type . ("f" . fun-apply . "x"))) "z" (refl ("f" . fun-apply . ("x" . _ . "1")))))))と定義する。文脈上わかる場合は、@($ (fun-apply-id (seq "f" "p")))のことを@($ ("f" . fun-apply . "p"))と書いてしまうこともある。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
