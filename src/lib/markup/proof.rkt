#lang typed/racket

(require morg/markup)

(provide (rename-out [my-proof proof]))

(define my-proof (proof/curried "証明"))
