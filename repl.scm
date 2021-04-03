(make-vector 4)

(vector 0 1 2 3)
(make-list 2)

(define v (vector 10 11 12 13))
(vector-ref v 2)
(vector->list v)

(define v '#(0 1 2 3))
(v 0)
(cdr v)

(make-vector (list 2 3) 0)

(define v2x3 (make-vector (list 2 3) 0))

(v2x3 1 2) 
(set! (v2x3 1 2) 99)
v2x3 
(subvector v 1 2)

(define v (vector 1 2 3 4))
v
(subvector v 4)
(define v2 (subvector v 0 1))

(and (= 1 1) (> 2 1) (< 1 2))

(and (= 1 1) (> 2 1) (< 1 2))

(or (= 1 2) (= 1 1))

(not #f)
(and (= 1 1) (post "foo"))

(and (= 1 1) (post "I ran!") 42)

(define h (hash-table :a 1))
(define var #f)

(or (set! var (h :b)) (post "error, no key for :b"))

(define h (hash-table :a 1 :b 2))

s4m: x is:  3 
(let exp-loop ((x 2) (y 4))
    (post "exp-loop, x:" x "y:" y)
    ; if y is greater than one, repeat
    (if (> y 1)
      ; on each pass, x is replaced with x times x
      (exp-loop (* x x) (- y 1))
      ; if y is 1, return the value of x
      x)) 

