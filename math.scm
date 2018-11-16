#lang racket

(define (wurzel x)
  (define (calc x y)
  (if (< (abs (- (* y y) x)) 0.00000000000001)
      y
      (calc x (/ (+ y (/ x y)) 2))))
  (calc x 1.0))

(define (maxwert n)
  (define (calc n max)
  (cond ((not (= n 0))
          (if (> (modulo n 10) max)
              (calc (quotient n 10) (modulo n 10))
              (calc (quotient n 10) max)))
         (else
          max)))
  (calc n 0))

(define (quersumme n)
  (define (calc n sum)
  (if (not (= n 0))
      (calc (quotient n 10) (+ sum (modulo n 10)))
      sum))
  (calc n 0))

(define x (lambda (x) (* x x)))

(define y 2)