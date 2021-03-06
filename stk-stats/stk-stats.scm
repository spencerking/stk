; v01052020

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


(define (internal-harmonic-mean-denom l)
  (if (null? l) 0
      (+ (/ 1 (car l)) (internal-harmonic-mean-denom (cdr l)))))

(define (harmonic-mean l)
  (/ (internal-count-list l) (internal-harmonic-mean-denom l)))

(define (internal-variance l m)
  (if (null? l) 0
      (+ (expt (- (car l) m) 2) (internal-variance (cdr l) m))))

(define (variance l)
  (* (/ 1 (internal-count-list l)) (internal-variance l (mean l))))

(define (std-dev l)
  (sqrt (variance l))
  )
