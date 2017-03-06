-module(combined).
-export([height_to_mph/1]). 
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

height_to_mph(Meters) -> mps_to_mph(fall_velocity(Meters)).
