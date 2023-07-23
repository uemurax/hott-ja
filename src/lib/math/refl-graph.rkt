#lang typed/racket

(require "core.rkt")

(provide refl-graph
         refl-graph:vertex
         refl-graph:edge
         refl-graph:refl)

(define refl-graph (const "ReflGraph"))
(define refl-graph:vertex (const "Vertex"))
(define refl-graph:edge (const "Edge"))
(define refl-graph:refl (const "refl"))
