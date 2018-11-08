#lang racket

; Defining our methods
(define (part1 object1 object2)
  (cons object1 object2)
  )

(define (part2 number1 number2 number3)
  (cons number1 (cons number2 (cons number3 empty)))
  )

(define (part3 str1 num1 listNum1 listNum2 listNum3)
  (cons str1 (cons num1 (cons (cons listNum1 (cons listNum2 (cons listNum3 empty))) empty)))
  )

(define (part4 str1 num1 listNum1 listNum2 listNum3)
  (list str1 num1 (list listNum1 listNum2 listNum3))
  )

; Our methods being called
(part1 "Programming" "Paradigms")
(part2 1 2 3)
(part3 "Hello" 1 2 3 4)
(part4 "World" 5 6 7 8)
(append '("YEEEHAW") '(99) '((98 99 100)))
