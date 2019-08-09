#|
When using the original procedure with numbers smaller than 
0.001 in this case, all guesses under 0.001 are correct and
our procedure is useless.
For very big numbers, the precission you need to satisfy this
procedure is extremely high which makes it also useless in
this case.

This new procedure just compares the new and last guess and
gives True only when the difference is small enough. This works
well with big numbers: it keeps guessing until the changes are
too small to be relevant and then gives you the square root.
On numbers smaller than 0.001 it still does not work because
the difference of two numbers smaller than 0.001 is always True.
|#

(define (good-enough? last_guess new_guess)
    (< (abs (- new_guess last_guess)) 0.001))