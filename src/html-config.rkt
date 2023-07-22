#lang at-exp typed/racket

(require morg/html
         (prefix-in eq: morg/eq-reasoning/html)
         morg)

(define custom-css-name "custom.css")

(define custom-css
  @%{
    .@|emph-class-name|, .@|dfn-class-name| {
      font-style: normal;
      font-weight: bold;
    }
    body {
      background-color: #FDFCF7;
      color: #002B36;
    }
    .@|toc-edge-summary-selected-class-name| {
      background-color: #ECFCC3;
    }
    .@|statement-body-class-name| {
      background-color: #F4FDFD;
      padding: 0.5em;
    }
    .@|statement-header-class-name| {
      padding: 0.5em;
      background-color: #E3FDFD;
    }
    .@|proof-class-name| {
      background-color: #F4F8F8;
      padding: 0.5em;
    }
    .@|katex-class-name| {
      margin-inline: 0.25em;
    }
  })

(provide-config
  (define cfg default-config)
  (eq:config-update
   (config-add-css cfg custom-css-name custom-css)))
