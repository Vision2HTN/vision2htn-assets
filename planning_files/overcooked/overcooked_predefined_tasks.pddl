( define 
  ( tasks overcooked-tasks )

  ( :task t-serve-dish
    :parameters
    (
      ?dish - dish
    )
    :precondition
    (
    )
    :effect
    ( and
      ( delivered ?dish )
    )
  )

  ( :task t-fulfill_ingredient
    :parameters
    (
      ?pot - pot
      ?i - ingredient
      ?count - count
    )
    :precondition ()
    :effect
    ( and
      ( in-pot ?pot ?i ?count )
    )
  )
  (:task t-add-one-ingredient
    :parameters (?pot - pot ?i - ingredient ?ncurrent ?nnext - count)
    :precondition (and 
      (in-pot ?pot ?i ?ncurrent)
      (increment ?ncurrent ?nnext))
    :effect (and (in-pot ?pot ?i ?nnext) (not (in-pot ?pot ?i ?ncurrent)))
  )
  ( :task t-cook
    :parameters (?pot - pot ?dish - dish ?finish - cooking-status)
    :precondition (finish-status ?finish)
    :effect (and (pot-status ?pot ?finish) (cooking-pot-dish ?pot ?dish))
  )
  ( :task t-get-to
    :parameter (?a - agent ?l - location)
    :precondition ()
    :effect (at ?a ?l)
  )
  ( :task t-get-item
    :parameters (?a - agent ?item - item)
    :precondition ()
    :effect (holding ?a ?item)
  )


)
