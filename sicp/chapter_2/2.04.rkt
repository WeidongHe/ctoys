(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

; car
; (car (cons x y))
; ((cons x y) (lambda (p q) p))
; ((lambda (m) (m x y)) (lambda (p q) p))
; ((lambda (p q) p) x y)
; x

; cdr
(define (cdr z)
  (z (lambda (p q) q)))

; (cdr (cons x y))
; ((cons x y) (lambda (p q) q))
; ((lambda (m) (m x y)) (lambda (p q) p))
; ((lambda (p q) q) x y)
; y