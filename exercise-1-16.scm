(define (iter-expt a b n)
 	(cond ((= n 0) a)
	 	  ((even? n) (iter-expt a (square b) (/ n 2)))
		  (else (iter-expt (* a b) (square b) (/ (- n 1) 2)))))

(define (even? x)
 	(= (remainder x 2) 0))

(define (square x)
 	(* x x))


(define (fast-expt b n)
 	(iter-expt 1 b n))
