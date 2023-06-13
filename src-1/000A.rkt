#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt")

(require "000G.rkt"
         "000H.rkt")

(provide part:000A)

(define part:000A
  @section[
    #:id "000A"
    #:title @%{関数型}
    @paragraph{
      @emph{関数}は型理論において最も基本的な概念である。
    }
    part:000H
    @paragraph{
      関数型の導入により、仮定@($ ("x" . elem-of . "A"))の下での@${B}の要素と@($ (d-fun-type #:_ ("x" . elem-of . "A") "B"))型の関数は同じように振る舞う。以降は仮定の下での要素の代わりに関数を使う。
    }
    part:000G
  ])

(module+ main
  (require morg/text)
  (display (->text part:000A)))