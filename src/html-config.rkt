#lang at-exp typed/racket

(require morg/html
         (prefix-in eq: (submod morg/eq-reasoning html-config))
         morg)

(define custom-css-name "custom.css")

(define custom-css
  @%{
    .@|emph-class-name|, .@|dfn-class-name| {
      font-style: normal;
      font-weight: bold;
    }
    body {
      background-color: #FDF6E3;
      color: #002B36;
    }
    .@|toc-edge-summary-selected-class-name| {
      background-color: #DDFCC3;
    }
  })

(provide-config
  (define cfg default-config)
  (eq:config-update
   (config-add-css cfg custom-css-name custom-css)))
