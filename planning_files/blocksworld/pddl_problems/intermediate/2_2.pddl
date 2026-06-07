(define (problem blocks4-2-2)
  (:domain Blocks4)

  (:objects
    A B C D - block
  )

  (:init
    (on B A)
    (on-table A)
    (clear B)
    (on-table C)
    (clear C)
    (on-table D)
    (clear D)
    (hand-empty)
  )

  (:goal
    (and
      (on B D)
      (on D A)
      (on A C)
      (on-table C)
      (clear B)
    )
  )

 
)
