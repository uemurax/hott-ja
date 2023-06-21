#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/refl-graph.rkt"
         morg/eq-reasoning)

(provide part:002A)

(define part:002A
  @example[
    #:id "002A"
    #:indexes @list[
      @index[#:key "はんしゃてきぐらふ"]{反射的グラフ}
    ]
    @paragraph{
      @${i}を階数とする。型@($ (@refl-graph{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (refl-graph:vertex . elem-of . @universe{i}))}
        @list-item{@($ (refl-graph:edge . elem-of . (refl-graph:vertex . fun-type . (refl-graph:vertex . fun-type . @universe{i}))))}
        @list-item{@($ (refl-graph:refl . elem-of . (d-fun-type ("x" . elem-of . refl-graph:vertex) (refl-graph:edge . fun-apply . (seq "x" "x")))))}
      ]
      @${@refl-graph{i}}の要素は@dfn{反射的グラフ(reflexive graph)}と呼ばれる。@($ ("A" . elem-of . @refl-graph{i}))と@($ ("Z" . elem-of . @refl-graph{i}))に対し、@($ (("E" . fun-apply . "Z") . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ ("v" . elem-of . (("A" . record-field . refl-graph:vertex) . equiv . ("Z" . record-field . refl-graph:vertex))))}
        @list-item{@($ ("e" . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2"))) ((("A" . record-field . refl-graph:edge) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . equiv . (("Z" . record-field . refl-graph:edge) . fun-apply . (seq ("v" . fun-apply . ("x" . _ . "1")) ("v" . fun-apply . ("x" . _ . "2"))))))))}
        @list-item{@($ ("r" . elem-of . (d-fun-type ("x" . elem-of . ("A" . record-field . refl-graph:vertex)) (("e" . fun-apply . (("A" . record-field . refl-graph:refl) . fun-apply . "x")) . id-type . (("Z" . record-field . refl-graph:refl) . fun-apply . ("v" . fun-apply . "x"))))))}
      ]
      要素@($ ((record-elem (seq ("v" . def-eq . (id-fun blank)) ("e" . def-eq . (abs (seq ("x" . _ . "1") ("x" . _ . "2")) (id-fun blank))) ("r" . def-eq . (abs "x" (refl blank))))) . elem-of . ("E" . fun-apply . "A")))を得る。レトラクトの列
      @disp{
        @eq-reasoning[
          @($ (d-pair-type ("Z" . elem-of . @refl-graph{i}) ("E" . fun-apply . "Z")))
          @($ retract-rel/symb) @%{並び換え}
          @($ (d-pair-type ("X" . elem-of . @universe{i}) (d-pair-type ("v" . elem-of . (("A" . record-field . refl-graph:vertex) . equiv . "X")) (d-pair-type "Y" (d-pair-type "e" (d-pair-type "z" (d-fun-type "x" blank)))))))
          @($ retract-rel/symb) @%{一価性}
          @($ (d-pair-type ("Y" . elem-of . (("A" . record-field . refl-graph:vertex) . fun-type . (("A" . record-field . refl-graph:vertex) . fun-type . @universe{i}))) (d-pair-type ("e" . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) ((("A" . record-field . refl-graph:edge) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . equiv . ("Y" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))) (d-pair-type "z" (d-fun-type "x" blank)))))
          @($ retract-rel/symb) @%{関数外延性と一価性}
          @($ (d-pair-type ("z" . elem-of . (d-fun-type ("x" . elem-of . ("A" . record-field . refl-graph:vertex)) (("A" . record-field . refl-graph:edge) . fun-apply . (seq "x" "x")))) (d-fun-type ("x" . elem-of . ("A" . record-field . refl-graph:vertex)) ((("A" . record-field . refl-graph:refl) . fun-apply . "x") . id-type . ("z" . fun-apply . "x")))))
        ]
      }
      を得て、最後の型は関数外延性により可縮なので、@($ (d-pair-type ("Z" . elem-of . @refl-graph{i}) ("E" . fun-apply . "Z")))は可縮である。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:002A)))
