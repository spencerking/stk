; v12272019

(define (display-black s)
  (display "\033[30m")
  (display s)
  (display "\033[0m")
  )

 (define (display-red s)
  (display "\033[31m")
  (display s)
  (display "\033[0m")
  )

(define (display-green s)
  (display "\033[32m")
  (display s)
  (display "\033[0m")
  )

(define (display-yellow s)
  (display "\033[33m")
  (display s)
  (display "\033[0m")
  )

(define (display-blue s)
  (display "\033[34m")
  (display s)
  (display "\033[0m")
  )

(define (display-magenta s)
  (display "\033[35m")
  (display s)
  (display "\033[0m")
  )

(define (display-cyan s)
  (display "\033[36m")
  (display s)
  (display "\033[0m")
  )

(define (display-white s)
  (display "\033[37m")
  (display s)
  (display "\033[0m")
  )
