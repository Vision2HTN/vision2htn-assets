(define (problem blocks4_2_3)
  (:domain Blocks4)

  (:objects
    A B C D E - block
  )

  (:init
    (on B A)
    (on-table A)
    (clear B)
    (on D C)
    (on-table C)
    (clear D)
    (on-table E)
    (clear E)
    (hand-empty)
  )

  (:goal
    (and
      (on D B)
      (on B E)
      (on E C)
      (on C A)
      (on-table A)
      (clear D)
    )
  )

  

)
