-module(combined).
-export([height_to_mph/1]). 

height_to_mph(Meters) -> convert:mps_to_mph(drop:fall_velocity(Meters)).