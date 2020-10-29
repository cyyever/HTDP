;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
; Image -> Number
; Compute the area of image i
(check-expect (image-area (rectangle 10 20 "solid" "blue")) 200)
(check-expect (image-area (rectangle 20 10 "solid" "blue")) 200)
(define (image-area i) (* (image-height i) (image-width i)))
