;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define base_people 120)
(define base_ticket_price 5.0)
(define people_increasing_amount 15)
(define price_change 0.1)
(define (attendees ticket-price)
    (- base_people (* (- ticket-price base_ticket_price) (/ people_increasing_amount price_change))))

(define (revenue ticket-price)
    (* ticket-price (attendees ticket-price)))


(define performance_cost 180)
(define attendee_cost 0.04)
(define (cost ticket-price)
    (+ performance_cost (* attendee_cost (attendees ticket-price))))

(define (profit ticket-price)
    (- (revenue ticket-price)
            (cost ticket-price)))
