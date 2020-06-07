(define (recur-f n)
 	(if (< n 3)
	 n
	 (+ (recur-f (- n 1))
	  	(* (recur-f (- n 2)) 2)
		(* (recur-f (- n 3)) 3))))

(define (iter-f n)
 (define (temp-f a b c count max-count)
  	(if (< max-count 3)
	 	max-count
	 	(if (< count 3)
		 	(temp-f count a b (+ count 1) max-count)
			(if (< count max-count)
			 	(temp-f (+ a (* 2 b) (* 3 c)) a b (+ count 1) max-count)
				(+ a (* 2 b) (* 3 c))))))
 (temp-f 0 0 0 0 n))
