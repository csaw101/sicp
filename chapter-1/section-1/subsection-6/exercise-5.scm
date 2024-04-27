#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
;; Applicative order: evaluate the arguments then apply the procedure
;; (test 0 (p))
;; (test 0 (p))
;; (test 0 (p))
;; interpreter will keep evaluating (p) forever

;; Normal order: expand the expression without evaluating the arguments until the expression is a primitive operator
;; (test 0 (p))
;; (if (= 0 0) 0 (p))
;; (if (#t) 0 (p))
;; 0
