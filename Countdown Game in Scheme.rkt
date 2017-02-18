#lang racket
; Countdown Game by Thomas McNamara
; The aim of the game is to use the 6 generated numbers to reach the target number.
; No two number may be used more than once.

;
(define SmallList(list-ref (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10) (random 20))) 
SmallList

(define LargeList(list-ref(list 25 50 75 100) (random 4)))
LargeList

(define TargetRange(+ 101 (random 999)))
TargetRange

