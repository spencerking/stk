; v12272019

; Basic list operations

; Sum  all elements in a list
(define (sum-list x)
  (if (null? x) 0
      (+ (car x) (sum-list (cdr x)))))

; Count the number of elements in a list
(define (count-list x)
  (if (null? x) 0
      (+ 1 (count-list (cdr x)))))

; Substitute an element in a list for a new element
(define (substitute l old new)
  (cond
   ((null? l) (quote ()))
   ((atom? (car l))
    (cond
     ((eq? (car l) old) (cons new (substitute (cdr l) old new)))
     (else (cons (car l) (substitute (cdr l) old new)))))
   (else (cons (substitute (car l) old new) (substitute (cdr l) old new)))))
