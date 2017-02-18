#lang racket
; Countdown Game by Thomas McNamara
; The aim of the game is to use the 6 generated numbers to reach the target number.
; No two number may be used more than once.

;4 SMALL NUMBERS
'SMALL
'
(define SmallList1(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))   ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList1 ; outputs the generated value to the console

(define SmallList2(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList2 ; outputs the generated value to the console

(define SmallList3(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList3 ; outputs the generated value to the console

(define SmallList4(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList4 ; outputs the generated value to the console

;2 LARGE NUMBERS
'LARGE
'
(define LargeList1(list-ref(list 25 50 75 100) (random 4))) ; Defines a variable LargeList that randomly generates a number from the list
LargeList1 ; outputs the generated value to the console

(define LargeList2(list-ref(list 25 50 75 100) (random 4))) ; Defines a variable LargeList that randomly generates a number from the list
LargeList2 ; outputs the generated value to the console

;TARGET NUMBER
'TARGET
'
(define TargetRange(+ 101 (random 999))) ; Generates a random value from 101 to 999 that will be used later as a target to reach
TargetRange ; outputs the generated value to the console


