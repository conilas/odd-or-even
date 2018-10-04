#lang br/quicklang

(define (read-syntax path port)
  (define src-lines (port->lines port))
  (define src-datums (format-datums '(handle ~a) src-lines))
  (define module-datum `(module stacker-mod "stacker.rkt"
                          ,@src-datums))
  (datum->syntax #f module-datum))
(provide read-syntax)

(define-macro (stacker-module-begin HANDLE-EXPR ...)
  #'(#%module-begin
     HANDLE-EXPR ...
     (display (first stack))))
(provide (rename-out [stacker-module-begin #%module-begin]))

(define stack empty)

(define (pop-stack!)
  (define arg (first stack))
  (set! stack (rest stack))
  arg)

(define (push-stack! arg)
  (set! stack (cons arg stack)))

(define (is_odd arg)
  (define result (equal? 0 (remainder arg 2)))
    result)

(define (handle [arg #f])
  (cond
    [(number? arg) (push-stack! arg)]
    [(and (string? arg) (equal? "!" arg))
     (push-stack! "!")] 
    [(or (equal? * arg) (equal? + arg))
     (define op-result (arg (pop-stack!) (pop-stack!)))
     (not (equal? arg "!")) (push-stack! op-result)
     (equal? arg "!") (display "is_odd:") (display (is_odd op-result)) (format "~o" op-result)]
    ))
(provide handle)

(provide + *)