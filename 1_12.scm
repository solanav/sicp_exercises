(define (pascal_rule n k)
    (cond
        ((or (> k (+ n 1)) (< k 0)) 0)
        ((or (= k 0) (= k n)) 1)
        (else (+ (over (- n 1) k) (over (- n 1) (- k 1))))))