#lang typed/racket

(require "util.rkt")

(provide refl-graph
         refl-graph:vertex
         refl-graph:edge
         refl-graph:refl)

(define refl-graph/symb (const "ReflGraph"))
(define refl-graph (make-fun refl-graph/symb))
(define refl-graph:vertex (const "Vertex"))
(define refl-graph:edge (const "Edge"))
(define refl-graph:refl (const "refl"))
