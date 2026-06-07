(define (problem blocks4_1_7)
  (:domain Blocks4)

  (:objects
    A B C D - block
  )

  (:init
    (clear A)
    (clear B)
    (clear C)
    (clear D)
    (on-table A)
    (on-table B)
    (on-table C)
    (on-table D)
    (hand-empty)
  )
  (:goal
    (and
      (on C A)
      (on-table A)
      (on-table B)
      (on D B)
      (clear C)
      (clear D)
    )
  )

  
    
  
)
