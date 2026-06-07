(define (problem blocks4_1_5)
  (:domain Blocks4)

  (:objects
    A B C - block
  )

  (:init
    (on-table A)
    (on B A)
    (clear B)
    (on-table C)
    (clear C)
    (hand-empty)
  )

  (:goal
    (and
      (on-table B)
      (on A B)
      (on C A)
      (clear C)
    )
  )

  
)
