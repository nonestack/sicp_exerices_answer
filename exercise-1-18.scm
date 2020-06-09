(define (double x)
 (+ x x))

(define (halve x)
 (/ x 2))

(define (even? x)
 (= (remainder x 2) 0))

(define (fast-expt x a b)
 (cond ((= b 0) x)
  	   ((= b 1) (+ a x))
	   ((even? b) (fast-expt x (double a) (halve b)))
	   (else (fast-expt (+ x a) (double a) (halve (- b 1))))))

(define (my-mult a b)
 (fast-expt 0 a b))
