; v02102020

; A single list is a row vector
; In a list of lists, each list is a row
; Each element in a list is a column

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Identity Matrices ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (internal-build-identity-row pos len curr)
  (if (= curr len) '()
  (cond ((= pos curr) (cons 1 (internal-build-identity-row pos len (+ curr 1))))
        ((not (= pos curr)) (cons 0 (internal-build-identity-row pos len (+ curr 1)))))
  )
  )

(define (internal-identity-matrix pos len)
  (if (= pos len) '()
      (cons (internal-build-identity-row pos len 0) (internal-identity-matrix (+ pos 1) len)
      )
      )
  ) 

(define (identity-matrix x)
  (internal-identity-matrix 0 x)
  )


;;;;;;;;;;;;;;;;;;;;
;;;; DIMENSIONS ;;;;
;;;;;;;;;;;;;;;;;;;;
(define (get-rows x)
  (if (null? x) 0
      (+ 1 (get-rows (cdr x)))
    )
  )

(define (internal-list-length l)
  (if (null? l) 0
      (+ 1 (internal-list-length (cdr l))))
  )

(define (get-cols x)
  (internal-list-length (car x))
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; SCALAR OPERATIONS ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(define (mult-row-by-scalar s l)
;    (if (null? l) '()
;          (cons (* (car l) s) (mult-row-by-scalar s (cdr l)))
;    )
;  )

(define (mult-row-by-scalar s r)
    (map (lambda (x) (* s x)) r)
  )

;(define (mult-matrix-by-scalar s m)
;    (if (null? m) '()
;        (cons (mult-row-by-scalar s (car m)) (mult-matrix-by-scalar s (cdr m)))
;    )
;   )

(define (mult-matrix-by-scalar s m)
    (map (lambda (r) (mult-row-by-scalar s r)) m)
    )



; Other
(define (m* m1 m2)
  (map
    (lambda (row)
      (apply map
	     (lambda col
	       (apply + (map * row col)))
	     m2))
    m1))

(define (transpose m)
  (apply map list m))

(define (zero-row n)
    (if (not (eqv? n 0)) (cons 0 (zero-row (- n 1)))
        '(0)))

; assumes two lists of equal length
(define (dot* l1 l2)
  (apply + (map * l1 l2)))
