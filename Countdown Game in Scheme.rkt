#lang racket
; Countdown Game by Thomas McNamara
; The aim of the game is to use the 6 generated numbers and 5 generated operators to reach the target number or get as close as possible.
; Running the application instructions can be found in the ReadMe on GitHub --- https://github.com/thomas995/TheoryOfAlgo_CountdownProject

(display "RANDOMLY GENERATED:")(newline)

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
(define cart_Ops(list '+ '/ '* '-))
(define ops(list + / * -))

(define random_Ops(list-ref ops (random 3))) ;set to 3 to cycle through the first 3 list entries(to not start off minusing numbers

(define random_Ops2(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

(define random_Ops3(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

(define random_Ops4(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

(define random_Ops5(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

(define random_Ops6(list-ref ops (random 4))) ;set to 4 to cycle through the first 4 list entries

; Took previous numbers and generated them into a single method
(define Usable_Nums(list SmallList1 SmallList2 SmallList3 SmallList4 LargeList1 LargeList2))

(display "NUMBERS GIVEN:")(newline)

Usable_Nums ; outputs the value of Usable_Nums to the console

;TARGET NUMBER
(display "TARGET NUMBER:")(newline)

(define TargetRange(+ 101 (random 899))) ; Generates a random value from 101 to 999 that will be used later as a target to reach

TargetRange ; outputs the generated value to the console

; Adds all the randomly selected numbers from the list to get an "attempt answer"
(define attemptAnswer(random_Ops
                      (random_Ops2 SmallList1
                        (random_Ops3 SmallList2
                          ( random_Ops4 SmallList3
                            ( random_Ops5 SmallList4
                               ( random_Ops6 LargeList1))))
                                 LargeList2)))

; draws line to section off the output
(display "__________________________________")(newline)

(display "ATTEMPTED ANSWER:")(newline)

; Displays the order in which the operators were used in
(display "Operators Used: ")(display random_Ops)(display random_Ops2 )(display random_Ops3)(display random_Ops4 )(display random_Ops5)(display random_Ops6)(newline)

 ; outputs the generated value to the console
(display attemptAnswer)(newline)

(display "Are you correct? ")

;IS THE ATTEMPTED ANSWER CORRECT?
(let ([arg1 attemptAnswer] [arg2 TargetRange]) ; assigns 2 values created earlier as arguments
  
  (cond ; the condition of the if else statement

    [(< attemptAnswer 0) display "Attempt is a minus number. Please try again." display(- TargetRange attemptAnswer)] ; if the number is a minus number(below 0), then warn the user.
    
    [(< arg1 arg2) (display "Attempt Is Too Low")] ; if the first argument is less than the second, say the attempt is too low
    
    [(> arg1 arg2) (display arg1) (newline) (display "Attempt Is Too High")] ; if the first argument is more than the second, say the attempt is too low
    
    [else (display arg2) (newline) (display "Attempt Is Correct!")])) ; else, if the attemp is correct, then display that the attempt was correct

; draws line to section off the output
(newline)(display "__________________________________")(newline)

;using the cartesian-product to get every possible combination of each set
(display "CARTESIAN-PRODUCT OF OPERATORS AND USABLE NUMBERS:")(newline)

(cartesian-product cart_Ops cart_Ops cart_Ops cart_Ops cart_Ops)

; outputs the numbers of values for the CP of cart_Ops
(display "LENGTH OF THE CARTESIAN-PRODUCT OF OPERATORS:")(length(cartesian-product cart_Ops cart_Ops cart_Ops cart_Ops cart_Ops))

;using the C-P to get every possible combination of all the randomly selected numbers generated earlier
(cartesian-product Usable_Nums Usable_Nums Usable_Nums Usable_Nums Usable_Nums Usable_Nums)(newline)

; outputs the numbers of values for the CP of Usable_Nums
(display "LENGTH OF THE CARTESIAN-PRODUCT OF USABLE NUMBERS:")(length(cartesian-product Usable_Nums Usable_Nums Usable_Nums Usable_Nums Usable_Nums Usable_Nums))

; draws line to section off the output
(newline)(display "__________________________________")(newline)

(display "USER INPUT:")(newline)

(display "Please select six numbers(FOUR SMALL and TWO LARGE)")(newline)

(display "TARGET: ")(display TargetRange)(newline) ; Show the target just above the input textbox in the console

; Adapted from - http://beautifulracket.com/explainer/loops.html
; loops the input textbox until one instance of each read(6) is completed. Then outputs the answer with the applied operators to give a random answer
(define inputAnswer(for ([i (in-range 1)])
                     
(displayln (random_Ops (read) (random_Ops2 (read)(random_Ops3 (read) (random_Ops4 (read) (random_Ops5 (read) (random_Ops6 (read))))))))))
                     
; ///// END OF CODE ///// --- Thomas McNamara 23rd April 2017
