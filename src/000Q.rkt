#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt")

(provide part:000Q)

(define part:000Q
  @notation[
    #:id "000Q"
    #:indexes @list[
      @index[#:key "あんもくてきひきすう"]{暗黙的引数}
    ]
    @paragraph{
      @($ ("f" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) (d-fun-type ("y" . elem-of . "B") "C"))))のように引数を@($ (implicit @phantom{x}))で囲った場合、その引数は@dfn{暗黙的(implicit)}であると約束する。つまり、要素@($ ("a" . elem-of . "A"))と@($ ("b" . elem-of . (subst-apply "B" ("x" . subst-bin . "a"))))に対して、関数適用を@($ ("f" . fun-apply . (seq "a" "b")))の代わりに@${a}を省略して@($ ("f" . fun-apply . "b"))と書く。@${B}の構成で@${x}を明示的に使う場合には実用上は曖昧性は無い。暗黙的な引数@${a}だけを適用したい場合は@($ (("f" . fun-apply/implicit . "a") . elem-of . ("B" . subst-apply . ("x" . subst-bin . "a"))))と書く。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000Q)))
