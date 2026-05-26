;; Archivo: problem.pddl
(define (problem transport-rocks-to-lab)
  (:domain rover-laboratory)
  (:objects
    loc1 loc2 loc3 loc4 loc5 - location
    rock1 rock2 - rock
  )
  (:init
    ;; Conexiones según el enunciado
    ;; 3 <-> 1
    (connected loc3 loc1)
    (connected loc1 loc3)
    ;; 3 -> 2 (solo una dirección)
    (connected loc3 loc2)
    ;; 2 -> 4 (solo una dirección)
    (connected loc2 loc4)
    ;; 3 <-> 4
    (connected loc3 loc4)
    (connected loc4 loc3)
    ;; 4 <-> 5
    (connected loc4 loc5)
    (connected loc5 loc4)

    ;; Posición inicial del robot (asumimos localidad 3)
    (robot-at loc3)

    ;; Rocas ya excavadas en sus localidades
    (rock-at rock1 loc1)
    (rock-at rock2 loc2)

    ;; Laboratorio en localidad 5
    (lab loc5)
  )
  (:goal
    (and
      (rock-at rock1 loc5)
      (rock-at rock2 loc5)
    )
  )
)
