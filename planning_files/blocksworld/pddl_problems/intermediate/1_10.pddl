(define (problem blocks4_1_10)
  (:domain Blocks4)

  (:objects
    A B C D E F G - block
  )

  (:init
    (on-table A)
    (on D A)
    (on G D)
    (clear G)
    (on-table B)
    (on E B)
    (clear E)
    (on-table C)
    (on F C)
    (clear F)
    (hand-empty)
  )

  (:goal
    (and
      (on-table A)
      (on B A)
      (on C B)
      (on D C)
      (on E D)
      (on F E)
      (on G F)
      (clear G)
    )
  )

  

)
