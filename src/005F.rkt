#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/proposition.rkt")

(provide-part (id)
  @definition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象とする。型@($ ((("x" . _ . "1") . cat:iso . ("x" . _ . "2")) . elem-of . @universe{i}))を@($ (prop-compr ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) @cat:is-iso{f}))と定義する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
