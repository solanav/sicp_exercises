#|
When using the original procedure with numbers smaller than 
0.001 in this case, all guesses under 0.001 are correct and
our procedure is useless.
For very big numbers, the precission you need to satisfy this
procedure is extremely high which makes it also useless in
this case.
|#

(define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001))