#lang racket

; Structure is (Left, Element, Right)

; Part A method
; ???

; Part B method
(define (searchTheTree element tree) ; Our method parameters
  (cond [(empty? tree) #f] ; If the tree is null, return false
        [(equal? element (cadr tree)) #t] ; If the element is found, return true;
        [(< element (cadr tree)) (searchTheTree element (car tree))] ; Recursively go through the left subtree if the element to find is less than the current node's element
        [(> element (cadr tree)) (searchTheTree element (caddr tree))] ; Recursively go through the right subtree if the element to find is greater than the current node's element
        )
  )

; Part C method
(define (insertIntoTree element tree) ; Our method parameters
  (cond [(empty? tree) (list empty element empty)] ; If the tree is null, display an tree with the element inserted
        [(equal? element (cadr tree)) tree] ; If the element is equal to another element in the tree, display the tree
        [(< element (cadr tree)) (list (insertIntoTree element (car tree)) (cadr tree) (caddr tree))] ; Recursively go through the left subtree if the element to insert is less than the current node's element
        [(> element (cadr tree)) (list (car tree) (cadr tree) (insertIntoTree element (caddr tree)))] ; Recursively go through the right subtree if the element to insert is greater than the current node's element
        )
  )

; Part D method
(define (insertListIntoTree list tree)
  (cond [(empty? list) tree] ; If the list is empty, print the tree i.e. we are finished
        [insertListIntoTree (insertIntoTree (car list) tree) (cdr list)] ; Calling both insert and insert as list methods recursively to add the list to the tree
        )
  )

; Part E method
; ???

; Part F method
; ???

; Test functions
;(insertIntoTree 1 '((() 5 ()) 10 (() 15 ())))

;(searchTheTree 5 '((() 5 ()) 10 (() 15 ())))
;(searchTheTree 12 '((() 5 ()) 10 (() 15 ())))

;(insertListIntoTree '(1 2 3 4 11 12 13 14) '((() 5 ()) 10 (() 15 ())))

