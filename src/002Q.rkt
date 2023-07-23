#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define a3 (a . _ . "3"))
(define p "p")
(define p1 (p . _ . "1"))
(define p2 (p . _ . "2"))

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。
    @ordered-list[
      @list-item{要素@(math (a1 a2 a3 . elem-of* . A))と同一視@(math (p1 . elem-of . (a1 . id-type . a2)))と@(math (p2 . elem-of . (a2 . id-type . a3)))に対して、同一視@(math ((fun-apply-id-comp . $* . f p2 p1) . elem-of . ((fun-apply-id . $* . f (p2 . id-comp . p1)) . id-type . ((fun-apply-id . $* . f p2) . id-comp . (fun-apply-id . $* . f p1)))))を構成できる。実際、@(math ((fun-apply-id-comp . $* . f p2 refl) . def-eq . refl))と定義すればよい。}
      @list-item{要素@(math  (a1 a2 . elem-of* . A))と同一視@(math (p . elem-of . (a1 . id-type . a2)))に対して、同一視@(math ((fun-apply-id-inv . $* . f p) . elem-of . ((fun-apply-id . $* . f (id-inv p)) . id-type . (id-inv (fun-apply-id . $* . f p)))))を構成できる。実際、@(math ((fun-apply-id-inv . $* . f refl) . def-eq . refl))と定義すればよい。}
    ]
  }
]
