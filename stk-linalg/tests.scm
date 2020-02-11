(load "stk-linalg.scm")

(define ident (identity-matrix 5))
(display ident)
(display "\n")

(define test-list (list (list 1 2 3) (list 4 5 6)))
(define output (get-rows test-list))
(display output)
(display "\n")

(define output (get-cols test-list))
(display output)
(display "\n")

(define test-list (list 1 2 3 4 12 43))
(define output (mult-row-by-scalar 3 test-list))
(display output)
(display "\n")

(define test-list (list (list 1 2 3) (list 4 5 6)))
(define output (mult-matrix-by-scalar 3 test-list))
(display output)
(display "\n")

(define m1 (list (list 1 4) (list 1 9) (list 0 2)))
(define m2 (list (list 6 3) (list 1 1)))
(define output (m* m1 m2))
(display output)
(display "\n")

(define output (transpose m1))
(display output)
(display "\n")

(display (zero-row 5))
(display "\n")

(define list1 (list 1 2 3))
(define list2 (list 4 5 6))
(define output (dot* list1 list2))
(display output)
(display "\n")
