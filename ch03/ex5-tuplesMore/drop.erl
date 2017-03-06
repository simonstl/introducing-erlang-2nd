-module(drop).
-export([fall_velocity/1]). 

% fall_velocity({Planemo, Distance}) -> fall_velocity(Planemo, Distance).
% fall_velocity(Where) -> fall_velocity(element(1,Where) , element(2,Where)).

fall_velocity(Where) -> 
 
   {Planemo, Distance} = Where,
  fall_velocity(Planemo, Distance).


fall_velocity(earth, Distance) when Distance >= 0  -> math:sqrt(2 * 9.8 * Distance);
fall_velocity(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);
fall_velocity(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).
