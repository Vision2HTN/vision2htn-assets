(define (problem simple-onion-tomato-soup)
  (:domain overcooked)

  (:objects
    Alex Bob - agent
    onion-pile bowl-pile - pile
    pot1 - pot
    delivery1 - delivery
    l0 l1 - location
    onion tomato - ingredient
    soup1 soup2 soup3 - dish
    bowl1 - bowl
    free - marker
    idle start finish - status
    n0 n1 n2 - count
   	table1 - table
  )

  (:init
    (at Alex l0)
    (at Bob l1)
    (at onion-pile l0)
    (at bowl-pile l1)
    (at pot1 l1)
    (at delivery1 l0)
   	(reachable table1 l0)
    (reachable table1 l1)
    (holding Alex free)
   	(holding Bob free)
   	(holding table1 free)
    (contains onion-pile onion)
    (contains bowl-pile bowl1)
    (increment n0 n1)
   	(increment n1 n2)
    (in-pot pot1 onion n0)
    (in-pot pot1 tomato n0)
    (pot-status pot1 idle)
    (cooking-progress idle start)
    (cooking-progress start finish)
    (finished-status finish)
    (idle-status idle)
    (recipe soup1 onion n1 tomato n0)
   	(recipe soup2 onion n2 tomato n0)
    (is-zero n0)
  
  )
  (:goal (and
    (delivered soup1)
    (delivered soup2)
  ))

  
)
