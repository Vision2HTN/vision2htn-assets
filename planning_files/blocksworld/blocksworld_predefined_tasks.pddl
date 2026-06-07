( define 
  ( tasks Blocks4-tasks )

  ( :task t-Make-On-Table
    :parameters
    (
      ?block - block
    )
    :precondition
    (
    )
    :effect
    ( and
      ( on-table ?block )
    )
  )

  ( :task t-Make-On
    :parameters
    (
      ?above - block
      ?below - block
    )
    :precondition
    (
    )
    :effect
    ( and
      ( on ?above ?below )
    )
  )

)
