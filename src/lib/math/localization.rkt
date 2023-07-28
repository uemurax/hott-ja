#lang typed/racket

(require "core.rkt")

(provide local-generator
         is-local
         local-generator:index
         local-generator:domain
         local-generator:codomain
         local-generator:fun)

(define local-generator (const "LocalGen"))
(define local-generator:index (const "Index"))
(define local-generator:domain (const "Dom"))
(define local-generator:codomain (const "Cod"))
(define local-generator:fun (const "fun"))

(define is-local (const "IsLocal"))