(load "stk-io.scm")
(define f-input (read-file "test.txt"))
(display f-input)
(display "\n")

(display (split-lines f-input))
(display "\n")

(display (car (split-lines f-input)))
(display "\n")

(display (car (split-on-separator f-input #\newline)))
(display "\n")

(display (car (split-on-separator f-input #\space)))
(display "\n")
