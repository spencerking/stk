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
