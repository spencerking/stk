; v12272019

(define (internal-sum-list x)
  (if (null? x) 0
      (+ (car x) (internal-sum-list (cdr x)))))

(define (internal-count-list x)
  (if (null? x) 0
      (+ 1 (internal-count-list (cdr x)))))

(define (mean l)
  (/ (internal-sum-list l) (internal-count-list l)))
