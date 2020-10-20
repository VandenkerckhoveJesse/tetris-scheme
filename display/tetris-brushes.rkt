#lang racket/gui
(provide blue-brush green-brush red-brush yellow-brush purple-brush)

(define blue-brush (make-object brush% "BLUE" 'solid))
(define green-brush (make-object brush% "GREEN" 'solid))
(define red-brush (make-object brush% "RED" 'solid))
(define yellow-brush (make-object brush% "YELLOW" 'solid))
(define purple-brush (make-object brush% "PURPLE" 'solid)) 