(define (problem blocks4_2_1)
  (:domain Blocks4)

  (:objects
    A B C D - block
  )

  (:init
    (on-table A)
    (on C A)
    (clear C)
    (on-table B)
    (on D B)
    (clear D)
    (hand-empty)
  )

  (:goal
    (and
      (on-table A)
      (on B A)
      (on C B)
      (on D C)
      (clear D)
    )
  )

 
)
