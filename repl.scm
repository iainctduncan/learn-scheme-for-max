(symbol "foo")

(symbol->string (symbol "foo"))

("Hello" 0)

(list-ref (list 1 2 3) 0)
(define l (list 1 2 3))
  (list-ref l 0)
  (list-set! l 0 99)

(define (add-1 x) (+ 1 x))
(eval (list (symbol "post") 1 2 3))

(define l '(+ 1 2 3))
(eval l)


(car (list (list 0 1) (list 2 3) (list 4 5)))
(cdr (list (list 0 1) (list 2 3) (list 4 5)))
(cadr (list (list 0 1) (list 2 3) (list 4 5)))
