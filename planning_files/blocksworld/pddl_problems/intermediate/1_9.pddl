(define (problem blocks4_1_9)
  (:domain Blocks4)

  (:objects
    A B C D E F - block
  )

  (:init
    (on-table A)
    (on B A)
    (clear B)
    (on-table C)
    (on D C)
    (clear D)
    (on-table E)
    (on F E)
    (clear F)
    (hand-empty)
  )

  (:goal
    (and
      (on-table F)
      (on E F)
      (on D E)
      (on C D)
      (on B C)
      (on A B)
      (clear A)
    )
  )

  

)
