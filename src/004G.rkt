#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/empty.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @(math empty-type)は命題である。実際、帰納法で直ちに示せる。
  }
]
