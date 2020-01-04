; v01032020

(define (internal-sum-list x)
  (if (null? x) 0
      (+ (car x) (internal-sum-list (cdr x)))))

(define (internal-count-list x)
  (if (null? x) 0
      (+ 1 (internal-count-list (cdr x)))))

(define (mean l)
  (/ (internal-sum-list l) (internal-count-list l)))


(define (internal-range l low high)
  (if (null? l) (- high low)
      (cond ((> (car l) high) (internal-range (cdr l) low (car l)))
	    ((< (car l) low) (internal-range (cdr l) (car l) high))
	    (else (internal-range (cdr l) low high)))))

(define (range l)
  (internal-range l (car l) (car l)))
