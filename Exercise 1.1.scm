;;;Exercise 1.1
;Below is a sequence of expressions. What is the result printed by the interpreter in response
;to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

10
;10

(+ 5 3 4)
;12

(- 9 1)
;8

(/ 6 2)
;3

(+ (* 2 4) (- 4 6))
;6

(define a 3)
;nothing printed (this statement sets a equal to 3; nothing's returned or printed)

(define b (+ a 1))
;nothing printed (this statement defines function b, which adds a to 1; nothing's returned or printed)

(+ a b (* a b))
;19

(= a b)
;#f (false)

(if (and (> b a) (< b (* a b)))
  b
  a
)
;4 (returns the value of b because this statement evaluates to true; otherwise, would print value of a)

(cond ((= a 4) 6)
  ((= b 4) (+ 6 7 a))
  (else 25))
; 16 (6 + 7 + a [3]) (getting this because b = 4 is true)

(+ 2 (if (> b a) b a))
;6 (b > a is true, so this prints b + 2)

(* (cond ((> a b) a)
          ((< a b) b)
          (else -1))
  (+ a 1))
;16 (conditional block returns value of b [4], which is multiplied with a + 1 [4])
