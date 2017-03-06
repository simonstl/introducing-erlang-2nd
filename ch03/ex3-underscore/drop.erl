-module(drop).
-export([fall_velocity/2]). 


fall_velocity(Planemo, Distance) -> math:sqrt(2 * 9.8 * Distance).