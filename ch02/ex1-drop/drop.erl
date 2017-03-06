-module(drop).
-export([fall_velocity/1, mps_to_mph/1, mps_to_kph/1]). 

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).

mps_to_mph(Mps) -> 2.23693629 * Mps.

mps_to_kph(Mps) -> 3.6 * Mps.
