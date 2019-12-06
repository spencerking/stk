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

;;;;;;;;;;;;;
;;;;TESTS;;;;
;;;;;;;;;;;;;
(define ident (identity-matrix 5))
(display ident)
(display "\n")
