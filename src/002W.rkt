#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @($ (("n" . _ . "1") . elem-of . nat))と@($ (("n" . _ . "2") . elem-of . nat))を要素とする。要素@($ ((nat:plus (seq ("n" . _ . "1") ("n" . _ . "2"))) . elem-of . nat))を構成する。自然数の帰納法を使い、@($ ((nat:plus (seq nat:zero ("n" . _ . "2"))) . def-eq . ("n" . _ . "2")))と@($ ((nat:plus (seq (nat:succ ("n" . _ . "1") ) ("n" . _ . "2"))) . def-eq . (nat:succ (nat:plus (seq ("n" . _ . "1") ("n" . _ . "2"))))))と定義する。形式的には@($ ((nat:plus (seq ("n" . _ . "1") ("n" . _ . "2"))) . def-eq . (nat:ind (seq ("n" . _ . "1") (abs "x" nat) ("n" . _ . "2") (abs (seq "x" "y") @nat:succ{y})))))と定義できる。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
