#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/set.rkt"
         "lib/math/cat.rkt")

(define i "i")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define x4 (x . _ . "4"))
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))
(define f3 (f . _ . "3"))

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
    @(math i)を階数とする。型@(math ((precat . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@dfn{対象(object)}の型@(math (cat:obj . elem-of . (universe . $ . i)))}
      @list-item{@dfn{射(morphism)}の型の族@(math (cat:map . elem-of . (cat:obj . fun-type . (cat:obj . fun-type . (universe . $ . i)))))}
      @list-item{@dfn{恒等射(identity)}@(math (cat:id . elem-of . (d-fun-type (implicit (x . elem-of . cat:obj)) (cat:map . $* . x x))))}
      @list-item{射の@dfn{合成(composition)}@(math (cat:comp . elem-of . (d-fun-type (implicit (x1 x2 x3 . elem-of* . cat:obj)) ((cat:map . $* . x2 x3) . fun-type . ((cat:map . $* . x1 x2) . fun-type . (cat:map . $* . x1 x3))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 . elem-of* . cat:obj) (is-set . $ . (cat:map . $* . x1 x2)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 . elem-of* . cat:obj) (d-fun-type (f . elem-of . (cat:map . $* . x1 x2)) ((cat:comp . $* . cat:id f) . id-type . f)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 . elem-of* . cat:obj) (d-fun-type (f . elem-of . (cat:map . $* . x1 x2)) ((cat:comp . $* . f cat:id) . id-type . f)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 x3 x4 . elem-of* . cat:obj) (d-fun-type (f1 . elem-of . (cat:map . $* . x1 x2)) (d-fun-type (f2 . elem-of . (cat:map . $* . x2 x3)) (d-fun-type (f3 . elem-of . (cat:map . $* . x3 x4)) ((cat:comp . $* . (cat:comp . $* . f3 f2) f1) . id-type . (cat:comp . $* . f3 (cat:comp . $* . f2 f1)))))))))}
    ]
    @(math (precat . $ . i))の要素を(階数@(math i)の)@dfn{前圏(precategory)}と呼ぶ。
  }
]
