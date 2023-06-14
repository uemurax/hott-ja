#lang typed/racket

(module+ main
  (require "index.rkt"
           "config.rkt"
           morg/html
           morg/latex)
  (define dst-dir/str
    (cast
     (command-line
      #:args (dst-dir)
      dst-dir)
     String))
  (define dst-dir (string->path dst-dir/str))
  (define doc part:index)
  (->html/publish doc dst-dir)
  (->latex/publish #:config latex-config doc dst-dir))
