#lang at-exp typed/racket

(require morg/bibliography
         (prefix-in b: morg/bibliography/bib-item)
         morg/markup/inline
         morg/markup/splice)

(provide (except-out (all-from-out morg/bibliography) bib)
         (rename-out [bib-1 bib]))

(define (bib-1 #:haeder [header : InlineLike @%{文献}]
               [maybe-id : String]
               [b : b:BibItem])
  (bib #:header header maybe-id b))
