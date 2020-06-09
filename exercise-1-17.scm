(define (double x)
 (+ x x))

(define (halve x)
 (/ x 2))

(define (even? x)
 (= (remainder x 2) 0))

(define (my-mult a b)
 (cond ((= b 0) 0)
  	   ((= b 1) a)
	   ((even? b) (my-mult (double a) (halve b)))
	   (else (+ a (my-mult (double a) (halve (- b 1)))))))
