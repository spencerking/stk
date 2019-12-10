; https://stackoverflow.com/questions/16335454/reading-from-file-using-scheme
(define (read-file f)
  (call-with-input-file f
    (lambda (input-port)
      (let loop ((x (read-char input-port)))
        (cond
          ((eof-object? x) '())
          (#t (begin (cons x (loop (read-char input-port))))))))))

