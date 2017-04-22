#lang racket
; Countdown Game by Thomas McNamara
; The aim of the game is to use the 6 generated numbers to reach the target number.
; No two number may be used more than once.

; 4 SMALL NUMBERS
; display and newline adapted from - https://docs.racket-lang.org/reference/Writing.html
(display "SMALL NUMBERS:")(newline)

(define SmallList1(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))   ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList1 ; outputs the generated value to the console

(define SmallList2(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList2 ; outputs the generated value to the console

(define SmallList3(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList3 ; outputs the generated value to the console

(define SmallList4(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList4 ; outputs the generated value to the console

; 2 LARGE NUMBERS
(display "LARGE NUMBERS:")(newline)
(define LargeList1(list-ref(list 25 50 75 100) (random 4))) ; Defines a variable LargeList that randomly generates a number from the list
LargeList1 ; outputs the generated value to the console

(define LargeList2(list-ref(list 25 50 75 100) (random 4))) ; Defines a variable LargeList that randomly generates a number from the list
LargeList2 ; outputs the generated value to the console

; Random Operator Generators to apply to all randomly selected numbers
(define cart_Ops(list '+ '- '/ '*))
(define ops(list + - / *))
(define random_Ops(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries
(define random_Ops2(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries
(define random_Ops3(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries
(define random_Ops4(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries
(define random_Ops5(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

; Took previous numbers and generated them into a single method
(define Usable_Nums(list SmallList1 SmallList2 SmallList3 SmallList4 LargeList1 LargeList2))
(display "NUMBERS GIVEN:")(newline)
Usable_Nums

;TARGET NUMBER
(display "TARGET NUMBER:")(newline)
(define TargetRange(+ 101 (random 999))) ; Generates a random value from 101 to 999 that will be used later as a target to reach
TargetRange ; outputs the generated value to the console


; Adds all the randomly selected numbers from the list to get an "attempt answer"
(define attemptAnswer(random_Ops SmallList1 SmallList2 SmallList3 SmallList4 LargeList1 LargeList2))
(display "ATTEMPTED ANSWER:")(newline)
(display "__________________________________")(newline)
(display "Operator Used: ")(display random_Ops)(newline)
(display "Guess: ")(display attemptAnswer)(newline) ; outputs the generated value to the console
(display "Are you correct? ")


;IS THE ATTEMPTED ANSWER CORRECT?
(let ([arg1 attemptAnswer] [arg2 TargetRange]) ; assigns 2 values created earlier as arguments
  (cond ; the condition of the if else statement
    [(< arg1 arg2) (display "Attempt Is Too Low")] ; if the first argument is less than the second, say the attempt is too low
    
    [(> arg1 arg2) (display arg1) (newline) (display "Attempt Is Too High")] ; if the first argument is more than the second, say the attempt is too low
    
    [else (display arg2) (newline) (display "Attempt Is Correct!")])) ; else, if the attemp is correct, then display that the attempt was correct

(newline)(display "__________________________________")(newline)

;using the cartesian-product to get every possible combination of each set
(cartesian-product cart_Ops cart_Ops cart_Ops cart_Ops cart_Ops)

;using the C-P to get every possible combination of all the randomly selected numbers generated earlier
(cartesian-product Usable_Nums Usable_Nums Usable_Nums Usable_Nums Usable_Nums)
 
(define (subsetsum l)
  (map
   (lambda (i) (apply + i))
  #(combinations l)))

; outputs all the possible answers for adding all the arrangements of the numbers
;(define L (list SmallList1 SmallList2 SmallList3 SmallList4 LargeList1 LargeList2))
;(newline)(display "All possible numbers when adding randomly selected numbers")
;(subsetsum L)
