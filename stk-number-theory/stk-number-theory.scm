; v05042020

(define-syntax while
  (syntax-rules ()
    ((_ condition . body)
     (let loop ()
       (cond (condition
	      (begin . body)
	      (loop)))))))

(define (internal-divide-by-two n)
  (if (= 0 (modulo n 2)) (internal-divide-by-two (/ n 2))
      n))

; Really lazy implementation, rewrite more scheme-like
; Runs in O(sqrt(n)), O(logn) is possible
(define (prime-factors n)
  (define nn (internal-divide-by-two n))
  (define i 3)
  (define primes '())
  (while (not (> i (sqrt nn)))
	 (while (= 0 (modulo nn i))
		(set! primes (append primes (list i)))
		(set! nn (/ nn i)))
	 (set! i (+ i 2)))
  
   (if (> nn 2)
       (set! primes (append primes (list nn))))

   (car (list primes))) ; This last line is a dumb hack, fix
