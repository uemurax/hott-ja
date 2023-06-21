#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/magma.rkt"
         morg/eq-reasoning)

(provide part:0028)

(define part:0028
  @example[
    #:id "0028"
    #:indexes @list[
      @index[#:key "まぐま"]{マグマ}
    ]
    @paragraph{
      @${i}を階数とする。型@($ (@magma{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (magma:carrier . elem-of . @universe{i}))}
        @list-item{@($ (magma:operator . elem-of . (magma:carrier . fun-type . (magma:carrier . fun-type . magma:carrier))))}
      ]
      @${@magma{i}}の要素は@dfn{マグマ(magma)}と呼ばれることがある。@($ ("A" . elem-of . @magma{i}))に対し、@($ ("E" . elem-of . (@magma{i} . fun-type . @universe{i})))を
      @disp{
            @($ (abs "Z" (d-pair-type ("e" . elem-of . (("A" . record-field . magma:carrier) . equiv . ("Z" . record-field . magma:carrier))) (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("e" . fun-apply . (("A" . record-field . magma:operator) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . (("Z" . record-field . magma:operator) . fun-apply . (seq ("e" . fun-apply . ("x" . _ . "1")) ("e" . fun-apply . ("x" . _ . "2")))))))))
      }
      と定義する。要素@($ ((pair (seq (id-fun ("A" . record-field . magma:carrier)) (abs (seq ("x" . _ . "1") ("x" . _ . "2")) (refl (("A" . record-field . magma:operator) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))))) . elem-of . ("E" . fun-apply . "A")))を得る。レトラクトの列
      @disp{
        @eq-reasoning[
          @($ (d-pair-type ("Z" . elem-of . @magma{i}) ("E" . fun-apply . "Z")))
          @($ retract-rel/symb) @%{並び換え}
          @($ (d-pair-type ("X" . elem-of . @universe{i}) (d-pair-type ("e" . elem-of . (("A" . record-field . magma:carrier) . equiv . "X")) (d-pair-type ("f" . elem-of . ("X" . fun-type . ("X" . fun-type . "X"))) (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("e" . fun-apply . (("A" . record-field . magma:operator) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . ("f" . fun-apply . (seq ("e" . fun-apply . ("x" . _ . "1")) ("e" . fun-apply . ("x" . _ . "2"))))))))))
          @($ retract-rel/symb) @%{一価性}
          @($ (d-pair-type ("f" . elem-of . (("A" . record-field . magma:carrier) . fun-type . (("A" . record-field . magma:carrier) . fun-type . ("A" . record-field . magma:carrier)))) (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) ((("A" . record-field . magma:operator) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . id-type . ("f" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))
        ]
      }
      を得て、最後の型は関数外延性により可縮なので、@($ (d-pair-type ("Z" . elem-of . @magma{i}) ("E" . fun-apply . "Z")))は可縮である。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0028)))
