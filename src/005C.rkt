#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/set.rkt"
         "lib/math/cat.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "たいしょう"]{対象}
    @index[#:key "しゃ"]{射}
    @index[#:key "こうとうしゃ"]{恒等射}
    @index[#:key "ごうせい"]{合成}
    @index[#:key "ぜんけん"]{前圏}
  ]
  @paragraph{
    @${i}を階数とする。型@($ (@precat{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@dfn{対象(object)}の型@($ (cat:obj . elem-of . @universe{i}))}
      @list-item{@dfn{射(morphism)}の型の族@($ (cat:map . elem-of . (cat:obj . fun-type . (cat:obj . fun-type . @universe{i}))))}
      @list-item{@dfn{恒等射(identity)}@($ (cat:id . elem-of . (d-fun-type ("x" . elem-of . cat:obj) (cat:map . fun-apply . (seq "x" "x")))))}
      @list-item{射の@dfn{合成(composition)}@($ (cat:comp . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3"))) ((cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3"))) . fun-type . ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "3"))))))))}
      @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (is-set (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))}
      @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (d-fun-type ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) ((cat:comp . fun-apply . (seq (cat:id . fun-apply . ("x" . _ . "2")) "f")) . id-type . "f")))))}
      @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (d-fun-type ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) ((cat:comp . fun-apply . (seq "f" (cat:id . fun-apply . ("x" . _ . "1")))) . id-type . "f")))))}
      @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3") ("x" . _ . "4")) (d-fun-type (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (d-fun-type (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))) (d-fun-type (("f" . _ . "3") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "3") ("x" . _ . "4")))) ((cat:comp . fun-apply . (seq (cat:comp . fun-apply . (seq ("f" . _ . "3") ("f" . _ . "2"))) ("f" . _ . "1"))) . id-type . (cat:map . fun-apply . (seq ("f" . _ . "3") (cat:comp . fun-apply . (seq ("f" . _ . "2") ("f" . _ . "1"))))))))))))}
    ]
    @${@precat{i}}の要素を(階数@${i}の)@dfn{前圏(precategory)}と呼ぶ。
  }
]
