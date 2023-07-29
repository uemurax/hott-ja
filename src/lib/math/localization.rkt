#lang typed/racket

(require "core.rkt")

(provide local-generator
         is-local
         weak-localization
         weak-localization:in
         weak-localization:ext
         weak-localization:is-ext
         localization
         (rename-out [weak-localization:in localization:in])
         local-generator-add-codiagonal
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

(define weak-localization (const "WLoc"))
(define weak-localization:in (const "in"))
(define weak-localization:ext (const "ext"))
(define weak-localization:is-ext (const "is-ext"))

(define localization (const "Loc"))

(define local-generator-add-codiagonal (const "D"))
