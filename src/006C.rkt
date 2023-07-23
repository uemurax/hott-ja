#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/logic.rkt"
         "lib/math/proposition.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define G "G")
(define G0 (G . _ . "0"))
(define G1 (G . _ . "1"))
(define t "t")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define y "y")
(define f "f")
(define g "g")

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏とする。@(math D)が圏ならば、@(math (functor-cat . $* . C D))は圏である。
  }
  #:proof @proof[
    @paragraph{
      @(math (F . elem-of . (functor-cat . $* . C D)))を対象とする。@ref["006A"]よりレトラクト@(math ((d-pair-type (G . elem-of . (functor-cat . $* . C D)) (F . cat:iso . G)) . retract-rel . (d-pair-type (G . elem-of . (functor . $* . C D)) (prop-compr (t . elem-of . (nat-trans . $* . F G)) (forall (x . elem-of . C) (cat:is-iso . $ . (t . $ . x)))))))を得る。後者が可縮であることを示すには、@ref["006B"]より
      @disp{
        @(math (d-pair-type (G0 . elem-of . ((C . record-field . cat:obj) . fun-type . (D . record-field . cat:obj))) (d-pair-type (G1 . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . C)) ((cat:map . $* . x1 x2) . fun-type . (cat:map . $* . (G0 . $ . x1) (G0 . $ . x2))))) (prop-compr (t . elem-of . (d-fun-type (x . elem-of . C) ((F . $ . x) . cat:iso . (G0 . $ . x)))) (forall (x1 x2 . elem-of* . C) (forall (f . elem-of . (cat:map . $* . x1 x2)) (((G1 . $ . f) . cat:comp-bin . (t . $ . x1)) . id-type . ((t . $ . x2) . cat:comp-bin . (F . $ . f)))))))))
      }
      が可縮であることを示せばよい。@(math (d-pair-type (G0 . elem-of . ((C . record-field . cat:obj) . fun-type . (D . record-field . cat:obj))) (d-fun-type (x . elem-of . C) ((F . $ . x) . cat:iso . (G0 . $ . x)))))の部分は@(math (d-fun-type (x . elem-of . C) (d-pair-type (y . elem-of . D) ((F . $ . x) . cat:iso . y))))のレトラクトなので、@ref["0029"]と@(math D)が圏であるという仮定から可縮である。よって、件の型は@(math (prop-compr (G1 . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . C)) ((cat:map . $* . x1 x2) . fun-type . (cat:map . $* . (F . $ . x1) (F . $ . x2))))) (forall (x1 x2 . elem-of* . C) (forall (f . elem-of . (cat:map . $* . x1 x2)) (((G1 . $ . f) . cat:comp-bin . cat:id) . id-type . (cat:id . cat:comp-bin . (F . $ . f)))))))のレトラクトである。この型はさらに@(math (d-fun-type (x1 x2 . elem-of* . C) (d-fun-type (f . elem-of . (cat:map . $* . x1 x2)) (prop-compr (g . elem-of . (cat:map . $* . (F . $ . x1) (F . $ . x2))) (g . id-type . (F . $ . f))))))のレトラクトであるが、これは@ref["0029"]と@ref["0026"]より可縮である。
    }
  ]
]
