#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define e "e")
(define f "f")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ろんりてきにどうち"]{論理的に同値}
    @notation-index[#:key "A<->B"]{@(math (A . log-equiv . B))}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。型@(math ((A . log-equiv . B) . elem-of . (universe . $ . i)))を@(math (record-type (list log-equiv-to (A . fun-type . B)) (list log-equiv-from (B . fun-type . A))))と定義する。@(math (A . log-equiv . B))の要素がある時、@(math A)と@(math B)は@dfn{論理的に同値(logically equivalent)}であると言う。@emph{反射律}、@emph{対称律}、@emph{推移律}を次のように構成できる。
    @unordered-list[
      @list-item{@(math ((record-elem (list log-equiv-to id-fun) (list log-equiv-from id-fun)) . elem-of . (A . log-equiv . A)))}
      @list-item{@(math ((abs e (record-elem (list log-equiv-to (e . record-field . log-equiv-from)) (list log-equiv-from (e . record-field . log-equiv-to)))) . elem-of . ((paren (A . log-equiv . B)) . fun-type . (paren (B . log-equiv . A)))))}
      @list-item{@(math ((abs* e f (record-elem (list log-equiv-to ((f . record-field . log-equiv-to) . fun-comp . (e . record-field . log-equiv-to))) (list log-equiv-from ((e . record-field . log-equiv-from) . fun-comp . (f . record-field . log-equiv-from))))) . elem-of . ((paren (A . log-equiv . B)) . fun-type . ((paren (B . log-equiv . C)) . fun-type . (paren (A . log-equiv . C))))))}
    ]
  }
]
