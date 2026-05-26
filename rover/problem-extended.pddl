;; Archivo: problem.pddl (actualizado)
(define (problem transport-four-rocks-to-lab)
  (:domain rover-laboratory)
  (:objects
    loc1 loc2 loc3 loc4 loc5 loc6 loc7 - location
    rock1 rock2 rock3 rock4 - rock
  )
  (:init
    ;; Conexiones bidireccionales
    (connected loc3 loc1)
    (connected loc1 loc3)
    (connected loc3 loc4)
    (connected loc4 loc3)
    (connected loc4 loc5)
    (connected loc5 loc4)

    ;; Conexiones unidireccionales
    (connected loc3 loc2)   ; 3 -> 2
    (connected loc2 loc4)   ; 2 -> 4
    (connected loc4 loc6)   ; 4 -> 6
    (connected loc6 loc7)   ; 6 -> 7
    (connected loc7 loc1)   ; 7 -> 1

    ;; Posición inicial del robot
    (robot-at loc4)

    ;; Rocas ya excavadas en sus localidades
    (rock-at rock1 loc1)
    (rock-at rock2 loc2)
    (rock-at rock3 loc3)
    (rock-at rock4 loc7)

    ;; Laboratorio en localidad 5
    (lab loc5)
  )
  (:goal
    (and
      (rock-at rock1 loc5)
      (rock-at rock2 loc5)
      (rock-at rock3 loc5)
      (rock-at rock4 loc5)
    )
  )
)
