#lang typed/racket

(module+ main
  (require "index.rkt"
           "config.rkt"
           morg/html
           morg/latex)
  (define build-html? : (Parameterof Boolean)
    (make-parameter #f))
  (define build-pdf? : (Parameterof Boolean)
    (make-parameter #f))
  (define dst-dir/str
    (cast
     (command-line
      #:once-each
      ["--html" "Build HTML version."
                (build-html? #t)]
      ["--pdf" "Build PDF version."
               (build-pdf? #t)]
      #:args (dst-dir)
      dst-dir)
     String))
  (define dst-dir (string->path dst-dir/str))
  (define doc part:index)
  (when (build-html?)
    (->html/publish #:config html-config doc dst-dir))
  (when (build-pdf?)
    (->latex/publish #:config latex-config doc dst-dir)))
