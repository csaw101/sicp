#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
  )

(a-plus-abs-b -1 -5)

;; Here the operator can either be a plus or a minus depending on the if expression
;; so operators like operands can be composed of compound expressions
