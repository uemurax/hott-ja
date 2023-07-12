#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/logic.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。@${D}が圏ならば、@($ (functor-cat (seq "C" "D")))は圏である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("F" . elem-of . (functor-cat (seq "C" "D"))))を対象とする。@ref["006A"]よりレトラクト@($ ((d-pair-type ("G" . elem-of . (functor-cat (seq "C" "D"))) ("F" . cat:iso . "G")) . retract-rel . (d-pair-type ("G" . elem-of . (functor (seq "C" "D"))) (prop-compr ("t" . elem-of . (nat-trans (seq "F" "G"))) (forall ("x" . elem-of . "C") (cat:is-iso ("t" . fun-apply . "x")))))))を得る。後者が可縮であることを示すには、@ref["006B"]より
        @disp{
          @($ (d-pair-type (("G" . _ . "0") . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))) (d-pair-type (("G" . _ . "1") . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2"))) ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (cat:map . fun-apply . (seq (("G" . _ . "0") . fun-apply . ("x" . _ . "1")) (("G" . _ . "0") . fun-apply . ("x" . _ . "2"))))))) (prop-compr ("t" . elem-of . (d-fun-type ("x" . elem-of . "C") (("F" . fun-apply . "x") . cat:iso . (("G" . _ . "0") . fun-apply . "x")))) (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (forall ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (((("G" . _ . "1") . fun-apply . "f") . cat:comp-bin . ("t" . fun-apply . ("x" . _ . "1"))) . id-type . (("t" . fun-apply . ("x" . _ . "2")) . cat:comp-bin . ("F" . fun-apply . "f")))))))))
        }
        が可縮であることを示せばよい。@($ (d-pair-type (("G" . _ . "0") . elem-of . (("C" . record-field . cat:obj) . fun-type . ("D" . record-field . cat:obj))) (d-fun-type ("x" . elem-of . "C") (("F" . fun-apply . "x") . cat:iso . (("G" . _ . "0") . fun-apply . "x")))))の部分は@($ (d-fun-type ("x" . elem-of . "C") (d-pair-type ("y" . elem-of . "D") (("F" . fun-apply . "x") . cat:iso . "y"))))のレトラクトなので、@ref["0029"]と@${D}が圏であるという仮定から可縮である。よって、件の型は@($ (prop-compr (("G" . _ . "1") . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2"))) ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (cat:map . fun-apply . (seq ("F" . fun-apply . ("x" . _ . "1")) ("F" . fun-apply . ("x" . _ . "2"))))))) (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (forall ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (((("G" . _ . "1") . fun-apply . "f") . cat:comp-bin . (cat:id . fun-apply . ("x" . _ . "1"))) . id-type . ((cat:id . fun-apply . ("x" . _ . "2")) . cat:comp-bin . ("F" . fun-apply . "f")))))))のレトラクトである。この型はさらに@($ (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (d-fun-type ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (prop-compr ("g" . elem-of . (cat:map . fun-apply . (seq ("F" . fun-apply . ("x" . _ . "1")) ("F" . fun-apply . ("x" . _ . "2"))))) ("g" . id-type . ("F" . fun-apply . "f"))))))のレトラクトであるが、これは@ref["0029"]と@ref["0026"]より可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
