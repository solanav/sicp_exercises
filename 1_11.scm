(define (fun n)
    (if (< n 3)
        n
        (+ 
            (fun (- n 1))
            (* 2 (fun (- n 2)))
            (* 3 (fun (- n 3))))))