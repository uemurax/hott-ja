#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(define i "i")
(define A "A")
(define n "n")
(define x "x")
(define z "z")
(define g "g")
(define a "a")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@(math A)は@(math n)型である。}
      @list-item[#:id "0001"]{関数@(math ((abs x (trunc:in n x)) . elem-of . (A . fun-type . (trunc n A))))は同値である。}
      @list-item[#:id "0002"]{@(math A)は@(math (trunc n A))のレトラクトである。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]から@anchor-ref[#:node (current-id) #:anchor "0002"]は自明である。@anchor-ref[#:node (current-id) #:anchor "0002"]から@anchor-ref[#:node (current-id) #:anchor "0000"]は@ref["0045"]による。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]から@anchor-ref[#:node (current-id) #:anchor "0001"]を示す。@(math A)が@(math n)型なので、帰納法より関数@(math (g . elem-of . ((trunc n A) . fun-type . A)))であって任意の@(math (a . elem-of . A))に対して@(math ((g . $ . (trunc:in n a)) . def-eq . a))となるものを構成できる。特に、@(math ((g . fun-comp . (abs x (trunc:in n x))) . homotopy . id-fun))である。@(math (((abs x (trunc:in n x)) . fun-comp . g) . homotopy . id-fun))を示す。各@(math (z . elem-of . (trunc n A)))に対して@(math ((trunc:in n (g . $ . z)) . id-type . z))は@ref["0052"]より@(math n)型なので、帰納法により@(math (d-fun-type (x . elem-of . A) ((trunc:in n (g . $ . (trunc:in n x))) . id-type . (trunc:in n x))))を示せばよいがこれは定義から明らかである。
    }
  ]
]
