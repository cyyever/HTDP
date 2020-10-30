;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require test-engine/racket-tests)

; String->String
; remove the first character from s
(check-expect (string-rest "abc") "bc")
(check-expect (string-rest "cba") "ba")
(define (string-rest s) (substring s 1))
(test)
