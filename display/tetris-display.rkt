#lang racket/gui
(require "tetris-brushes.rkt")
(provide draw)


(define (draw)
  (send frame show #t)
  (define canvas (new canvas% [parent frame]
             [paint-callback
              (lambda (canvas dc)
                (send dc set-scale 3 3)
                (send dc set-text-foreground "red")
                (send dc draw-rectangle 200 100 0 0))]))
  (define dc (send canvas get-dc))
  (draw-character dc))

(define (draw-character dc)
  (send dc set-brush blue-brush)
  (send dc draw-rectangle 50 50 0 0))

(define frame (new frame%
                   [label "Example"]
                   [width 300]
                   [height 300]))




