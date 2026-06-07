(define (problem prob_2_7_reversed)
  (:domain Blocks4)

  (:objects
    A B C D E F G H - block
  )

  (:init
    (hand-empty)
    (on A B)
    (on B C)
    (on C D)
    (on D E)
    (on E F)
    (on F G)
    (on G H)
    (on-table H)
    (clear A)
  )

  (:goal
    (and
      (on E A)
      (on-table A)
      (clear E)
      (on F B)
      (on-table B)
      (clear F)
      (on G C)
      (on-table C)
      (clear G)
      (on H D)
      (on-table D)
      (clear H)
    )
  )

  
)
