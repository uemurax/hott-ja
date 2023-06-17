#lang typed/racket

(require (except-in morg/markup proof)
         "article.rkt")

(provide
 (all-from-out
  morg/markup
  "article.rkt"))
