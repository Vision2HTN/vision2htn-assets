(define (problem blocks4_1_4)
  (:domain Blocks4)

  (:objects
    A B C - block
  )

  (:init
    (on C B)
    (on B A)
    (on-table A)
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
