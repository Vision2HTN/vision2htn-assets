(define (problem blocks4_1_3)
  (:domain Blocks4)

  (:objects
    A B C - block
  )

  (:init
    (on B A)
    (on-table A)
    (clear B)
    (on-table C)
    (clear C)
    (hand-empty)
  )

  (:goal
    (and
      (on A B)
      (on B C)
      (on-table C)
      (clear A)
    )
  )

  
)
