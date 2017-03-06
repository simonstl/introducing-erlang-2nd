-module(drop2).
-export([fall_velocity/2]). 


fall_velocity(_, Distance) -> math:sqrt(2 * 9.8 * Distance).