;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (string-delete str i)
(cond
  ( (string=? str "") "")
  (   (= i 0 ) (substring str 1))
  (else
    (string-append (substring str  0 (- i 1))  (substring str i))
    )
  ))
(string-delete "1234567" 0)
(string-delete "1234567" 5)
