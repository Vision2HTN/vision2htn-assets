(define (problem blocks4-2-6-reversed)
  (:domain Blocks4)

  (:objects
    A B C D E F G H - block
  )

  (:init  
    (hand-empty)
    (on E A)
    (on-table A)
    (clear E)
    (on B F)
    (on-table F)
    (clear B)
    (on H D)
    (on-table D)
    (clear H)
    (on G C)
    (on-table C)
    (clear G)
  )

  (:goal
    (and
      (on-table A)
      (on B A)
      (on C B)
      (on D C)
      (clear D)
      (on-table E)
      (on F E)
      (on G F)
      (on H G)
      (clear H)
    )
  )

  

)
