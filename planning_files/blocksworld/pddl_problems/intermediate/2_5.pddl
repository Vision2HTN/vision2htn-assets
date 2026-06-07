(define (problem blocks4-2-5)
  (:domain Blocks4)

  (:objects
    A B C D E F G - block
  )

  (:init
    (on-table A)
    (on B A)
    (on C B)
    (clear C)
    (on-table D)
    (on E D)
    (clear E)
    (on-table F)
    (on G F)
    (clear G)
    (hand-empty)
  )

  (:goal
    (and
      (on-table A)
      (on C A)
      (on E C)
      (on G E)
      (clear G)
      (on-table B)
      (on D B)
      (on F D)
      (clear F)
    )
  )

  

)
