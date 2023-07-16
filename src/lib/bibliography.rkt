#lang at-exp typed/racket

(require  morg/bibliography)

(provide (except-out (all-from-out morg/bibliography) bibliography)
         (rename-out [bib bibliography]))

(define bib @make-bibliography{文献})
