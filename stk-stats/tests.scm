(load "stk-stats.scm")

(define test-list (list 1 2 3 4 5))
(display (mean test-list))

(display "\n")

(define range-list (list 12 23 3 4 5 -4 7))
(display (range range-list))

(display "\n")

(display (harmonic-mean test-list))

(display "\n")

(define variance-list (list 1 2 3 2))
(display (variance variance-list))

(display "\n")

(display (std-dev variance-list))

(display "\n")
