#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/pointed-type.rkt"
         morg/eq-reasoning)

(provide part:0023)

(define part:0023
  @example[
    #:id "0023"
    #:indexes @list[
      @index[#:key "てんつきかた"]{点付き型}
    ]
    @paragraph{
      @${i}を階数とする。型@($ (@pointed-type{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (pointed-type:carrier . elem-of . @universe{i}))}
        @list-item{@($ (pointed-type:point . elem-of . pointed-type:carrier))}
      ]
      @${@pointed-type{i}}の要素を(階数@${i}の)@dfn{点付き型(pointed type)}と呼ぶ。@($ ("A" . elem-of . @pointed-type{i}))に対し、@($ ("E" . elem-of . (@pointed-type{i} . fun-type . @universe{i})))を@($ (abs "Z" (d-pair-type ("e" . elem-of . (("A" . record-field . pointed-type:carrier) . equiv . ("Z" . record-field . pointed-type:carrier))) (("e" . fun-apply . ("A" . record-field . pointed-type:point)) . id-type . ("Z" . record-field . pointed-type:point)))))と定義する。要素@($ ((pair (seq (id-fun ("A" . record-field . pointed-type:carrier)) (refl ("A" . record-field . pointed-type:point)))) . elem-of . ("E" . fun-apply . "A")))を得る。レトラクトの列
      @disp{
        @eq-reasoning[
          @($ (d-pair-type ("Z" . elem-of . @pointed-type{i}) ("E" . fun-apply ."Z")))
          @($ retract-rel/symb) @%{並び換え}
          @($ (d-pair-type ("X" . elem-of . @universe{i}) (d-pair-type ("e" . elem-of . (("A" . record-field . pointed-type:carrier) . equiv . "X")) (d-pair-type ("x" . elem-of . "X") (("e" . fun-apply . ("A" . record-field . pointed-type:point)) . id-type . "x")))))
          @($ retract-rel/symb) @%{一価性}
          @($ (d-pair-type ("x" . elem-of . ("A" . record-field . pointed-type:carrier)) (("A" . record-field . pointed-type:point) . id-type . "x")))
        ]
      }
      を得て、最後の型は@ref["001N"]より可縮なので、@($ (d-pair-type ("Z" . elem-of . @pointed-type{i}) ("E" . fun-apply . "Z")))は可縮である。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:0023)))
