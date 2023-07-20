#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define y "y")
(define f "f")
(define g "g")
(define c "c")
(define p "p")
(define q "q")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math (universe . $ . i))のすべての関数型が関数外延性を満たす。}
      @list-item[#:id "0001"]{任意の型@(math (A . elem-of . (universe . $ . i)))と型の族@(math (B . elem-of . (A . fun-type . (universe . $ . i))))に対して、@(math ((d-fun-type (x . elem-of . A) (is-contr . $ . (B . $ . x))) . fun-type . (is-contr . $ . (d-fun-type (x . elem-of . A) (B . $ . x)))))の要素がある。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]を示す。@(math (c . elem-of . (d-fun-type (x . elem-of . A) (is-contr . $ . (B . $ . x)))))を仮定する。仮定@(math c)より、関数@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))と同一視@(math (p . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (y . elem-of . (B . $ . x)) ((f . $ . x) . id-type . y)))))を得る。同一視@(math (q . elem-of . (d-fun-type (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (f . id-type . g))))を構成すればよい。任意の@(math (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))に対して、@(math ((abs x (p . $* . x (g . $ . x))) . elem-of . (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))を得るが、関数外延性と@ref["001S"]により@(math (f . id-type . g))の要素を得る。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0000"]を示す。@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))を関数とする。@ref["001A"]より、@(math (d-pair-type (g . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))) (d-fun-type (x . elem-of . A) ((f . $ . x) . id-type . (g . $ . x)))))は@(math (d-fun-type (x . elem-of . A) (d-pair-type (y . elem-of . (B . $ . x)) ((f . $ . x) . id-type . y))))のレトラクトであるが、後者は仮定と@ref["001N"]により可縮である。よって、@ref["001K"]から前者も可縮である。
    }
  ]
]
