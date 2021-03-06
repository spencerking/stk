; v12272019

; https://stackoverflow.com/questions/16335454/reading-from-file-using-scheme
(define (read-file f)
  (call-with-input-file f
    (lambda (input-port)
      (let loop ((x (read-char input-port)))
        (cond
          ((eof-object? x) '())
          (#t (begin (cons x (loop (read-char input-port))))))))))


; All of this newline stuff can probably be generalized to any character
; TODO: Explore that later
(define (internal-get-line l)
  (if (or (null? l) (eqv? (car l) #\newline)) '()
    (cons (car l) (internal-get-line (cdr l)))))

(define (internal-find-next-newline l)
  (cond
    ((null? l) '())
    ((eqv? (car l) #\newline) (cdr l))
    (#t (internal-find-next-newline (cdr l)))))

(define (split-lines l)
  (if (null? l) '()
      (cons (internal-get-line l) (split-lines (internal-find-next-newline l)))))


; TODO
; Merge the following with the newline stuff above
(define (internal-get-segment l s)
  (if (or (null? l) (eqv? (car l) s)) '()
    (cons (car l) (internal-get-segment (cdr l) s))))

(define (internal-find-next-separator l s)
  (cond
    ((null? l) '())
    ((eqv? (car l) s) (cdr l))
    (#t (internal-find-next-separator (cdr l) s))))

(define (split-on-separator l s)
  (if (null? l) '()
      (cons (internal-get-segment l s) (split-on-separator (internal-find-next-separator l s) s))))
