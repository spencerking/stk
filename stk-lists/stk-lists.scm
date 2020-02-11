; v02102020

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

; Return the first n elements of a list
(define (first-n l n)
  (cond ((= 0 n) '())
        (else (cons (car l) (first-n (cdr l) (- n 1))))))

; Return the last element of a list
(define (last-element l)
    (if (null? l) '()
        (cond ((null? (cdr l)) (car l))
            (else (last-element (cdr l))))))
