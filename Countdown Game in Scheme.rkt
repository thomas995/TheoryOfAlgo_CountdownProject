#lang racket
; Countdown Game by Thomas McNamara
; The aim of the game is to use the 6 generated numbers to reach the target number.
; No two number may be used more than once.

;
(define SmallList(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20)))  ; Defines a variable SmallList that randomly generates a number from one to ten
SmallList ; outputs the generated value to the console

(define LargeList(list-ref(list 25 50 75 100) (random 4))) ; Defines a variable LargeList that randomly generates a number from the list
LargeList ; outputs the generated value to the console

(define TargetRange(+ 101 (random 999))) ; Generates a random value from 101 to 999 that will be used later as a target to reach
TargetRange ; outputs the generated value to the console


