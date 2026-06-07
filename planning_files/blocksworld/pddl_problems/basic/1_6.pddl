(define (problem blocks4_1_6)
  (:domain Blocks4)

  (:objects
    A B C D - block
  )

  (:init
    (clear A)
    (clear C)
    (on-table B)
    (on-table D)
    (on A B)
    (on C D)
    (hand-empty)
  )

  (:goal
    (and
      (on-table A)
      (on-table B)
      (on-table C)
      (on-table D)
      (clear A)
    )
  )

  
)
