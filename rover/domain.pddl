;; Archivo: domain.pddl
(define (domain rover-laboratory)
  (:requirements :strips :typing)
  (:types location rock)
  (:predicates
    (robot-at ?l - location)
    (rock-at ?r - rock ?l - location)
    (carrying ?r - rock)
    (lab ?l - location)
    (connected ?from - location ?to - location)
  )

  (:action move
    :parameters (?from - location ?to - location)
    :precondition (and (robot-at ?from) (connected ?from ?to))
    :effect (and (not (robot-at ?from)) (robot-at ?to))
  )

  (:action pick
    :parameters (?r - rock ?l - location)
    :precondition (and (robot-at ?l) (rock-at ?r ?l) (not (carrying ?r)))
    :effect (and (not (rock-at ?r ?l)) (carrying ?r))
  )

  (:action drop
    :parameters (?r - rock ?l - location)
    :precondition (and (robot-at ?l) (carrying ?r) (lab ?l))
    :effect (and (not (carrying ?r)) (rock-at ?r ?l))
  )
)
