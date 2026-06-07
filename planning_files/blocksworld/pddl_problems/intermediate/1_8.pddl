(define (problem blocks4-1-8)
  (:domain Blocks4)

  (:objects
    A B C D E - block
  )

  (:init
    (on-table A)
    (on B A)
    (on C B)
    (on D C)
    (on E D)
    (clear E)
    (hand-empty)
  )

  (:goal
    (and
      (on-table E)
      (on D E)
      (on C D)
      (on B C)
      (on A B)
      (clear A)
    )
  )

)
