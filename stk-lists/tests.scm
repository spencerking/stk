(load "stk-lists.scm")

(define test-list (list 1 2 3 4 12 43))
(display (sum-list test-list))
(display "\n")
(display (count-list test-list))
(display "\n")
(display (substitute test-list 12 67))
(display "\n")
(display (first-n test-list 5))
(display "\n")
(display (last-element test-list))
(display "\n")
