#lang sicp

(define (sqr x) (* x x))

(define (sum-of-sqrs x y) (+ (sqr x) (sqr y)))

(define (sum-of-larger-two a b c)
  (if (> a b)
	(if (> b c)
	  (sum-of-sqrs a b)
	  (sum-of-sqrs a c))
    (if (> a c)
	  (sum-of-sqrs a b)
	  (sum-of-sqrs b c))))

;; tests
(sum-of-larger-two 3 2 1) ;; 13
(sum-of-larger-two 3 1 2) ;; 13
(sum-of-larger-two 2 3 1) ;; 13
(sum-of-larger-two 2 1 3) ;; 13
(sum-of-larger-two 1 2 3) ;; 13
(sum-of-larger-two 1 3 2) ;; 13

(sum-of-larger-two 2 3 3) ;; 18
(sum-of-larger-two 3 2 3) ;; 18
(sum-of-larger-two 3 3 2) ;; 18

(sum-of-larger-two 2 2 3) ;; 13
(sum-of-larger-two 2 3 2) ;; 13
(sum-of-larger-two 3 2 2) ;; 13

(sum-of-larger-two 2 2 2) ;; 8
