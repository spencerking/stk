; Basic list operations

; Sum  all elements in a list
(define (sum-list x)
  (if (null? x) 0
      (+ (car x) (sum-list (cdr x)))))

; Count the number of elements in a list
(define (count-list x)
  (if (null? x) 0
      (+ 1 (count-list (cdr x)))))






;;;;;;;;;;;;;;;
;;;; TESTS ;;;;
;;;;;;;;;;;;;;;

(define test-list (list 1 2 3 4 12 43))
(display (sum-list test-list))
(display "\n")
(display (count-list test-list))
(display "\n")
