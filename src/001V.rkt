#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")
(define e "e")
(define f "f")
(define H "H")
(define y "y")
(define G "G")
(define g "g")
(define p "p")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (e . elem-of . (A . equiv . B)))を同値とすると、@(math (retract . $* . B A))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      仮定@(math e)から@(math (f . elem-of . (A . fun-type . B)))と@(math (H . elem-of . (is-equiv . $ . f)))を得る。任意の@(math (y . elem-of . B))に対して@(math ((H . $ . y) . elem-of . (is-contr . $ . (fiber . $* . f y))))を得るので、特に関数@(math (G . elem-of . (d-fun-type (y . elem-of . B) (fiber . $* . f y))))を得る。@ref["001A"]の要領で@(math G)から関数@(math (g . elem-of . (B . fun-type . A)))と同一視@(math (p . elem-of . (d-fun-type (y . elem-of . B) ((f . $ . (g . $ . y)) . id-type . y))))を得る。これで要素@(math ((record-elem (list retract:retraction f) (list retract:section g) (list retract:id p)) . elem-of . (retract . $* . B A)))を構成できた。
    }
  ]
]
