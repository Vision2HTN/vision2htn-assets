(define (problem blocks4_1_2)
  (:domain Blocks4)

  (:objects
    A B C - block
  )

  (:init
    (on-table A)
    (on-table B)
    (on-table C)
    (clear A)
    (clear B)
    (clear C)
    (hand-empty)
  )

  (:goal
    (and
      (on C B)
      (on B A)
      (on-table A)
      (clear C)
    )
  )
)
