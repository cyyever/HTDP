;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define BASE-PEOPLE 120)
(define BASE-TICKET-PRICE 5.0)
(define PEOPLE-INCREASING-AMOUNT 15)
(define PRICE-CHANGE 0.1)
(define PRICE-SENSITIVITY (/ PEOPLE-INCREASING-AMOUNT PRICE-CHANGE))
(define (attendees ticket-price)
    (- BASE-PEOPLE (* (- ticket-price BASE-TICKET-PRICE)  PRICE-SENSITIVITY)))

(define (revenue ticket-price)
    (* ticket-price (attendees ticket-price)))


(define attendee-cost 1.54)
(define (cost ticket-price)
     (* attendee-cost (attendees ticket-price)))

(define (profit ticket-price)
    (- (revenue ticket-price)
            (cost ticket-price)))

(profit 3)
(profit 4)
(profit 5)
