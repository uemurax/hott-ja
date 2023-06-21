#lang typed/racket

(require (except-in morg/markup proof))

(provide
 (all-from-out morg/markup)
 (rename-out [my-proof proof]))

(define my-proof (proof/curried #:header "証明"))
