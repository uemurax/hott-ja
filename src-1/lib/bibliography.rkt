#lang at-exp typed/racket

(require (only-in morg/markup %)
          morg/bibliography)

(provide (except-out (all-from-out morg/bibliography) bibliography)
         (rename-out [bib bibliography]))

(define bib
  (bibliography/curried #:header @%{文献}))
