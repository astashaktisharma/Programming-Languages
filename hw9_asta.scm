#lang racket
; Suman Sharma, Asta Shakti : April 28, 2025
; Description: This program finds the largest and smallest elements in a list, reverses a list, and finds the union of two lists representing sets.

; ***** PROGRAMMING EXERCISE 6 *****
(newline)
(display "Programming Exercise 6")
(newline)

; Function to return a list with smallest and largest numbers from given list
(define (min-max lst)
  (define (helper lst smallest largest)
    (if (null? lst)
        (list smallest largest)
        (helper (cdr lst)
                (if (< (car lst) smallest) (car lst) smallest)
                (if (> (car lst) largest) (car lst) largest))))
  (if (null? lst)
      '()
      (helper (cdr lst) (car lst) (car lst))))

; Test for Exercise 6
(display "Smallest and Largest elements of (3 1 7 0 9 2) is ")
(display (min-max '(3 1 7 0 9 2)))
(newline)

; ***** PROGRAMMING EXERCISE 11 *****
(newline)
(display "Programming Exercise 11")
(newline)

; Function to reverse a list
(define (reverse-list lst)
  (define (reverse-helper lst acc)
    (if (null? lst)
        acc
        (reverse-helper (cdr lst) (cons (car lst) acc))))
  (reverse-helper lst '()))

; Test for Exercise 11
(display "Reverse of (1 2 3 4 5) is ")
(display (reverse-list '(1 2 3 4 5)))
(newline)

; ***** PROGRAMMING EXERCISE 13 *****
(newline)
(display "Programming Exercise 13")
(newline)

; Function to return the union of two simple sets (lists without duplicates)
(define (union-set a b)
  (define (member? item lst)
    (cond ((null? lst) #f)
          ((equal? item (car lst)) #t)
          (else (member? item (cdr lst)))))
  (define (add-if-new item result)
    (if (member? item result)
        result
        (cons item result)))
  (define (union-helper lst result)
    (if (null? lst)
        result
        (union-helper (cdr lst) (add-if-new (car lst) result))))
  (union-helper b (union-helper a '())))

; Test for Exercise 13
(display "Union of two lists(1 2 3) and (2 3 4 5) is ")
(display (union-set '(1 2 3) '(2 3 4 5)))
(newline)
