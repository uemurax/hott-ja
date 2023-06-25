#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/empty.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @($ empty-type)は命題である。実際、帰納法で直ちに示せる。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
