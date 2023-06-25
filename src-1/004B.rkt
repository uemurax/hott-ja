#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/empty.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{集合}
    @paragraph{
      @($ trunc-level:-1)型の次に単純な型は@($ trunc-level:0)型である。@${A}が@($ trunc-level:0)型の時は、任意の@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して@($ (("x" . _ . "1") . id-type . ("x" . _ . "2")))は命題である。よって、二つの要素が同一視されるかどうかには興味があるが、どう同一視されるかは考える意味がない。このような型を@emph{集合}であると考える。
    }
    (include-part "004C.rkt")
    (include-part "004D.rkt")
    @paragraph{
      型が集合であることの十分条件として、同一視型が@emph{決定可能}であるというのがある(@ref["004H"])。ここで、型@${P}が決定可能とは、@($ ("P" . coproduct-type . ("P" . fun-type . empty-type)))の要素があることを言う。
    }
    (include-part "004E.rkt")
    ;(include-part "004H.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
