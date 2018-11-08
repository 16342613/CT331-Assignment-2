#lang racket

; Provide access by unit test file
(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)
(provide count_instances_tail_recursion)
(provide count_instances_tr)

; Part A method
(define (ins_beg element list)
  (cons element list)
  )

; Part B method
(define (ins_end element list)
  (cons list element)
  )

; Part C method
(define (count_top_level list)
  (cond [(empty? list) 0]
        [(list? (car list)) (count_top_level (cdr list))]
        [(+ 1 (count_top_level (cdr list)))]
        )
  )

; Part D method
(define (count_instances list element)
  (cond [(empty? list) 0]
        [(equal? (car list) element) (+ 1 (count_instances (cdr list) element))]
        [(count_instances (cdr list) element)]
        )
  )

; Part E method
(define (count_instances_tail_recursion list element)
  (count_instances_tr list element 0)
  )

(define (count_instances_tr list element total)
  (cond [(empty? list) total]
        [(equal? (car list) element) (count_instances_tr (cdr list) element (+ total 1))]
        [(count_instances_tr (cdr list) element total)]
        )
  )

; Part F method (NOT WORKING)
(define (count_instances_deep list element)
  (cond [(empty? list) 0]
        [(equal? element (car list)) (+ 1 (count_instances_deep (cdr list)))]
        [(list? (car list)) (+ (count_instances_deep element (car list)) (count_instances_deep element (cdr list)))]
        [(count_instances_deep element (cdr list))]
   )
  )

; Function tests
;(ins_beg 'a '(b c d))
;(ins_beg '(a b) '(b c d))

;(ins_end 'a '(b c d))
;(ins_beg '(a b) '(b c d))

;(count_top_level '((a b) (b c) d e f))
;(count_top_level '(a b c (d e) f (g h)))

;(count_instances '(a b c d e a) 'a)
;(count_instances '(1 2 1 5 5 1) 1)

;(count_instances_tail_recursion '(1 3 1 1 2) 1)
;(count_instances_deep '(2 (1 1) 2 3) 1)
