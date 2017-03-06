-module(drop).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance) ->

Gravity = case Planemo of
   earth -> 9.8;
   moon -> 1.6;
   mars -> 3.71
 end, % note comma - function isn't done yet

try math:sqrt(2 * Gravity * Distance) of
   Result -> Result
catch
   error:Error -> {found, Error}
end.