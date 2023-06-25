#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         morg/math)

(define times/symb (macro "times"))
(define times
  (binary #:level '* times/symb))

(provide-part (id)
  @section[
    #:id id
    #:title @%{構造同一原理}
    @paragraph{
      @ref["0022"]で構造同一原理の例をいくつか見たが、群や環などの数学的に興味深い構造については後回しにしていた。これは、型理論において「@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))」は単なる型なので公理を適切に記述するためには@ref["003Z"]の意味での命題の概念が必要だからである。例えば、ある二項演算@($ times/symb)の結合律を素直に@($ (((("a" . _ . "1") . times . ("a" . _ . "2")) . times . ("a" . _ . "3")) . id-type . (("a" . _ . "1") . times . (("a" . _ . "2") . times . ("a" . _ . "3")))))と書くと、これは公理というよりも構造の一部になってしまう。結合律を適切に公理として扱うためには、同一視型が命題であることを要請すればよい。
    }
    ;(include-part "004W.rkt")
    ;(include-part "004Y.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
