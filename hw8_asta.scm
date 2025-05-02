;This program computes the volume of a sphere, roots of a quadratic equation and counts number of zeros ina given list.
;Suman Sharma, Asta Shakti (2025/04/25)
#lang racket
;1.computing the volume of a sphere
(define (spherevolume r)
  (* (/ 4 3.0) 3.14159 (* r r r)))

(display "The volume of a sphere with radius 2 is ")
(display (spherevolume 2))
(newline)

; 2.computing roots of a quadratic equation using IF
(define (quadraticroots a b c)
  (let ((d (- (* b b) (* 4 a c))))
    (if (< d 0)
        "are complex"
        (let ((root1 (/ (+ (- b) (sqrt d)) (* 2 a)))
              (root2 (/ (- (- b) (sqrt d)) (* 2 a))))
          (list root1 root2)))))
(display "The roots of the quadratic equation x^2 + x - 6 = 0 are ")
(display (quadraticroots 1 1 -6))
(newline)
(display "The roots of the quadratic equation x^2 + 1 = 0 ")
(display (quadraticroots 1 0 1))
(newline)

; 5.counting number of zeros in a list
(define (countzeros lst)
  (if (null? lst)
      0
      (+ (if (= (car lst) 0) 1 0)
         (countzeros (cdr lst)))))

(display "The number of zeros in the list (1 0 3 5 0 0 8 0) is ")
(display (countzeros '(1 0 3 5 0 0 8 0)))