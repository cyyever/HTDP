;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require test-engine/racket-tests)

; String->String
; remove the last character from s
(check-expect (string-remove-last "abc") "ab")
(check-expect (string-remove-last "cba") "cb")

(define (string-remove-last s) (substring s 0 (- (string-length s) 1)))
(test)
