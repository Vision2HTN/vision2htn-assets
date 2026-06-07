(define (domain overcooked)
  (:requirements :strips :typing)

  (:types
    location
    status count
    agent pile pot delivery - locatable
    ingredient dish bowl marker - item
    agent table - holdable
  )

  (:predicates
    (at ?x - locatable ?l - location)
    (connect ?from ?to - location)
   	(reachable ?table - table ?from - location)
    (holding ?a - holdable ?i - item)
    (contains ?p - pile ?i - item)
    (increment ?n1 ?n2 - count)
    (recipe ?d - dish ?i1 - ingredient ?n1 - count ?i2 - ingredient ?n2 - count)
    (in-pot ?p - pot ?i - ingredient ?n - count)
    (pot-status ?p - pot ?s - status)
    (cooking-progress ?s1 ?s2 - status)
    (finished-status ?s - status)
    (idle-status ?s - status)
    (is-zero ?n - count)
    (label-pot-dish ?p - pot ?d - dish)
    (delivered ?d - dish)
  )

  (:action move
    :parameters (?a - agent ?from ?to - location)
    :precondition (and (at ?a ?from) (connect ?from ?to))
    :effect (and (not (at ?a ?from)) (at ?a ?to))
  )

  (:action pick-up-from-pile
    :parameters (?a - agent ?p - pile ?l - location ?item - item ?free - marker)
    :precondition (and (at ?a ?l) (at ?p ?l) (holding ?a ?free) (contains ?p ?item))
    :effect (and (not (holding ?a ?free)) (holding ?a ?item))
  )
  
  (:action pick-up-from-table
    :parameters (?a - agent ?table - table ?l - location ?item - item ?free - marker)
    :precondition (and (at ?a ?l) (reachable ?table ?l) (holding ?a ?free) (holding ?table ?item))
    :effect (and (not (holding ?a ?free)) (holding ?a ?item) (not (holding ?table ?item)) (holding ?table ?free))
  )
  (:action drop-off-to-table
    :parameters (?a - agent ?table - table ?l - location ?item - item ?free - marker)
    :precondition (and (at ?a ?l) (reachable ?table ?l) (holding ?a ?item) (holding ?table ?free))
    :effect (and (not (holding ?table ?free)) (holding ?a ?free) (holding ?table ?item) (not (holding ?a ?item)))
  )
  

  (:action add-to-pot
    :parameters (?a - agent ?p - pot ?l - location ?i - ingredient ?n1 ?n2 - count ?free - marker ?idle - status)
    :precondition (and
      (at ?a ?l) (at ?p ?l) (holding ?a ?i)
      (in-pot ?p ?i ?n1) (increment ?n1 ?n2)
      (pot-status ?p ?idle)
      (idle-status ?idle)
    )
    :effect (and
      (not (holding ?a ?i)) (holding ?a ?free)
      (not (in-pot ?p ?i ?n1)) (in-pot ?p ?i ?n2)
    )
  )

  (:action start-cook
    :parameters (?a - agent ?p - pot ?l - location ?d - dish ?i1 ?i2 - ingredient ?n1 ?n2 ?zero - count ?free - marker ?idle ?start - status)
    :precondition (and
      (at ?a ?l) (at ?p ?l) (holding ?a ?free)
      (pot-status ?p ?idle) (cooking-progress ?idle ?start)
      (in-pot ?p ?i1 ?n1) (in-pot ?p ?i2 ?n2)
      (recipe ?d ?i1 ?n1 ?i2 ?n2)
      (is-zero ?zero)
    )
    :effect (and
      (not (pot-status ?p ?idle)) (pot-status ?p ?start)
      (not (in-pot ?p ?i1 ?n1)) (not (in-pot ?p ?i2 ?n2))
      (in-pot ?p ?i1 ?zero) (in-pot ?p ?i2 ?zero)
      (label-pot-dish ?p ?d)
    )
  )

  (:action cook
    :parameters (?p - pot ?s1 ?s2 - status)
    :precondition (and (pot-status ?p ?s1) (cooking-progress ?s1 ?s2))
    :effect (and (not (pot-status ?p ?s1)) (pot-status ?p ?s2))
  )

  (:action pour-from-pot
    :parameters (?a - agent ?p - pot ?l - location ?d - dish ?b - bowl ?finish ?idle - status)
    :precondition (and
      (at ?a ?l) (at ?p ?l) (holding ?a ?b)
      (pot-status ?p ?finish) (finished-status ?finish)
      (label-pot-dish ?p ?d)
      (idle-status ?idle)
    )
    :effect (and
      (not (holding ?a ?b)) (holding ?a ?d)
      (not (pot-status ?p ?finish)) (pot-status ?p ?idle)
      (not (label-pot-dish ?p ?d))
    )
  )

  (:action drop-off-to-delivery
    :parameters (?a - agent ?del - delivery ?l - location ?d - dish ?free - marker)
    :precondition (and (at ?a ?l) (at ?del ?l) (holding ?a ?d))
    :effect (and (not (holding ?a ?d)) (holding ?a ?free) (delivered ?d))
  )
)
